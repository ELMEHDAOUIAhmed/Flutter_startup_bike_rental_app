import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:myapp/utils.dart';
import '/widgets/nav_bar.dart';
import 'dart:async';
import 'package:myapp/widgets/unlock_notification.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as map_tool;
import '/helpers/station.dart';
import '/models/db.dart';
import '/components/my_button.dart';
import '/helpers/globals.dart' as globals;
import '/providers/user_api.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Timer? positionTimer;
  String? stationId;
  double long = 0.0;
  double lat = 0.0;
  //gps postion
  double topPosition = 559;
  bool _gps = true;
  bool _cancelRide = false;
  static double _distanceInMeters = 0.0;
  bool distance_window = false;
  bool _menu_window = true;
  String? id;
  int? id_int;
  String userDestStation = '';
  Position? _dest, _userDest;
  String? _selectedStationName;
  bool _ride_Visible = true;
  bool _nav_bar_Visible = false;
  bool _notification_Visible = false;
  String _selectedMarkerId = '';
  GoogleMapController? _googleMapController;
  Marker? _user;
  int? stock; // the initial stock value retreive this from DB
  String? token = '';

  //Starting location
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(36.71228369662267, 3.1805848553156153),
    zoom: 14.8,
  );

  //initialize user location to avoid null value in widgets
  // ignore: prefer_const_constructors
  Position positionuser = Position(
    latitude: 0.0,
    longitude: 0.0,
    accuracy: 0.0,
    speedAccuracy: 0.0,
    speed: 0.0,
    heading: 0.0,
    altitude: 0.0,
    timestamp: null,
  );

  //note used delete after
  void _stationNotSelected() {
    showDialog(
      //you need a statefull widget to show dialog
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          title: Row(
            children: const [
              //Icon(Icons.error, color: Colors.red),
              Icon(Icons.error, color: Color.fromARGB(255, 165, 0, 0)),
              SizedBox(width: 8.0),
              Flexible(
                fit: FlexFit.loose,
                child: Text('Select a Station first!',
                    style: TextStyle(fontSize: 16.0)),
              ),
            ],
          ),
        );
      },
    );
  }

  void _confirmCancelRide() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          title: Row(
            children: const [
              Icon(Icons.notification_important, color: Colors.yellow),
              SizedBox(width: 8.0),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                    'Alert!\nAre you sure you want to Cancel your Ride ?.',
                    style: TextStyle(fontSize: 16.0)),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                //No
              },
              child: Text("NO"),
            ),
            TextButton(
              onPressed: () {
                cancelBike(token, globals.stationIdSource);
                if (positionTimer != null) {
                  positionTimer!.cancel();
                }
                _stopTracking();
                //cancelRideAPI; // will be defined after

                setState(() {
                  //globals.postorGet = 0;
                  //globals.globalIndex = 2;
                  distance_window = !distance_window;
                  _ride_Visible = !distance_window;
                  _nav_bar_Visible = !_nav_bar_Visible;
                  _cancelRide = !_cancelRide;
                  _gps = !_gps;
                  topPosition = 559;
                  _menu_window = true;
                });
                Navigator.of(context).pop();
                //Yes
              },
              child: Text("YES"),
            ),
          ],
        );
      },
    );
  }

//Polygons & Functions
//USTHB
//Leave it const
  List<LatLng> polygonPoints = const [
    LatLng(36.714482, 3.189251),
    LatLng(36.712855, 3.187641),
    LatLng(36.711687, 3.188853),
    LatLng(36.705791, 3.177370),
    LatLng(36.708044, 3.173349),
    LatLng(36.709850, 3.171937),
    LatLng(36.712574, 3.173075),
    LatLng(36.718905, 3.181284),
    LatLng(36.716142, 3.186227),
    LatLng(36.714526, 3.189002),
  ];

//Add more stations and make test in the function  _determinePositionMoveCamera();
// add function call back to listen to isInUSTHBArea changes , so when its true
// we can allow user to close lock in unlock_notification.dart;

  bool? isInUSTHBArea;

  void checkUserIsInsideUSTHB(Position Position) {
    //convert position into LatLng
    LatLng pointLatLng = LatLng(Position.latitude, Position.longitude);

    List<map_tool.LatLng> convertedPolygonPoints = polygonPoints
        .map((point) => map_tool.LatLng(point.latitude, point.longitude))
        .toList();
    setState(() {
      isInUSTHBArea = map_tool.PolygonUtil.containsLocation(
          map_tool.LatLng(pointLatLng.latitude, pointLatLng.longitude),
          convertedPolygonPoints,
          false);
    });
    print('Is the USER INSIDE USTHB ? :$isInUSTHBArea');
    globals.isInsideUSTHB = isInUSTHBArea;
  }

  LatLng? userLocation;

  List<Marker> markers = [];
  var incircles;

  void fetchAll() async {
    token = await getToken();
    markers = await fetchStations(token);
    setState(() {});
  }

  // Create a Circle for each marker
  void drawCircles() {
    incircles = markers
        .map((marker) => Circle(
              circleId: CircleId(marker.markerId.value),
              center: marker.position,
              radius: 20, //15
              fillColor: Color(0xFF006491).withOpacity(0.2),
              strokeColor: Colors.black,
              strokeWidth: 1,
            ))
        .toSet();
  }

  void _getToken() async {
    token = await getToken();
    print('TOKEN :$token');
  }

  void _deletetoken() async {
    deleteToken();
  }

  void updateMarkerStock() {
    fetchAll();
  }

  Future<void> checkStock(String? markerId) async {
    //retreive updated stations
    fetchAll();

    //setState(() {
    final index =
        markers.indexWhere((marker) => marker.markerId.value == markerId);
    if (index >= 0) {
      final marker = markers[index];
      var markerId = markers[index].markerId;
      globals.stationIdSource = int.parse(markerId.value);
      final stockSnippet = marker.infoWindow.snippet!;
      final stockString =
          stockSnippet.substring(stockSnippet.indexOf(':') + 1).trim();
      final int stock = int.tryParse(stockString) ?? 0;

      print('Station : ${globals.stationIdSource} / STOCK : $stock');
      if (stock > 0) {
        try {
          await reserveBike(token, globals.stationIdSource);
          if (globals.response == 'Success') {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                  title: Row(
                    children: [
                      //Icon(Icons.error, color: Colors.red),
                      const Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8.0),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                            'Station \n "${markers[index].infoWindow.title}"\n successfully selected. \n\n Go to your Station and Follow instruction to unlock \nBike : ${globals.velo}.',
                            style: TextStyle(fontSize: 16.0)),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        _confirmRide();
                      },
                      child: Text("Continue"),
                    ),
                  ],
                );
              },
            );
          } else {
            {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48),
                    ),
                    title: Row(
                      children: const [
                        Icon(Icons.error, color: Colors.red),
                        SizedBox(width: 8.0),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Text(
                            'Error. Please try again!',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Continue"),
                      ),
                    ],
                  );
                },
              );
            }
          }
        } //we need api to cancel all ride for user in case an issue happends
        catch (e) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48),
                ),
                title: Row(
                  children: const [
                    Icon(Icons.error, color: Colors.red),
                    SizedBox(width: 8.0),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text(
                        'Error! insufficient balance\n You need to refill Your Balance.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Continue"),
                  ),
                ],
              );
            },
          ).then((value) {
            Navigator.pushNamed(context, '/voucher');
          });
        }
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48),
              ),
              title: Row(
                children: [
                  //Icon(Icons.error, color: Colors.red),
                  const Icon(Icons.check_circle, color: Colors.yellow),
                  const SizedBox(width: 8.0),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                        'Station \n "${markers[index].infoWindow.title}"\n Has no Bikes Available. \n\n Try Again!.',
                        style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Continue"),
                ),
              ],
            );
          },
        );
      }
    }
    //});
  }

  //get markerid of the station you want to return
  void returbBikeFromMarker(String markerId) {
    setState(() {
      final index =
          markers.indexWhere((marker) => marker.markerId.value == markerId);
      if (index >= 0) {
        // api to add velo to marker

        fetchAll();
      }
    });
  }

  BitmapDescriptor userIcon = BitmapDescriptor.defaultMarker;

  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(size: Size(200, 200)),
            'assets/icons/google_icon.png')
        .then(
      (icon) {
        userIcon = icon;
      },
    );
  }

  // ONE TIME CALLS

  Future<Position> _determinePosition() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    return position;
  }

  void _moveCamera(Position position) {
    if (position != null) {
      _googleMapController!.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 17)));
    }
  }

  // Only start executing this when the user has started his ride
  //Every 20 sec send http request of this information

  StreamSubscription<Position>? _positionStreamSubscription;
  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 1,
  );

  void _determinePositionMoveCamera(int? index) async {
    try {
      _positionStreamSubscription =
          Geolocator.getPositionStream(locationSettings: locationSettings)
              .listen((position) async {
        setState(() {
          positionuser = position;
        });

        checkUserIsInsideUSTHB(positionuser);
        checkIfInStationArea(positionuser);

        //start sending positionuser via http in 20sec intervals
        // Start the timer
        positionTimer = Timer.periodic(Duration(seconds: 20), (timer) {
          sendPos(token, position, globals.velo);
        });

        // move camera to new position here
        _googleMapController!.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
                target: LatLng(position.latitude, position.longitude),
                zoom: 17)));
        if (index != null) {
          double distanceInMeters =
              await calculateDistanceInMeters(index, positionuser);

          setState(() {
            _distanceInMeters = distanceInMeters;
          });
        }
        if (_distanceInMeters <= 20) {
          setState(() {
            _cancelRide = false;
          });
        }
        if (_distanceInMeters <= 10) {
          setState(() {
            _notification_Visible = true;
            distance_window = false;
          });
        }
        if (_distanceInMeters >= 20) {
          setState(() {
            //_notification_Visible = false;
            //causes errors , try to alert user or cancel his ride , in case he leaves without taking
            // his bike he cannot connect after :/
            distance_window = true;
          });
        }
      });
    } catch (e) {
      // handle errors here
    }
  }

  void _stopTracking() {
    _positionStreamSubscription?.cancel();
  }

  Future<String?> checkIfInStationArea(Position position) async {
    stationId = '';
    for (Marker marker in markers) {
      double distanceInMeters = await Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        marker.position.latitude,
        marker.position.longitude,
      );
      if (distanceInMeters <= 15) {
        stationId = marker.markerId.value;
        print('User is in Station ${marker.markerId.value}');

        globals.stationIdDest = stationId;
        //break;
        return stationId;
      } else {
        print('User is not close to any station');
        globals.stationIdDest = null;
      }
    }
    // callback to retrieve the isInStation value from another file
  }

  Future<double> calculateDistanceInMeters(
      int markerIndex, Position userPosition) async {
    // if (markerIndex != null && userPosition != null) 
    // {
      Marker marker = markers[markerIndex];
      double distanceInMeters = Geolocator.distanceBetween(
        userPosition.latitude,
        userPosition.longitude,
        marker.position.latitude,
        marker.position.longitude,
      );
      return distanceInMeters;
    // } 
    // else {
    //   return 0.0;
    // }
  }

  @override
  void initState() {
    //initialize stuff here  also allow you to execute function without call
    setCustomMarkerIcon();
    super.initState();
    fetchAll();
  }

  @override
  void dispose() {
    _googleMapController?.dispose();
    super.dispose();
    _stopTracking();
    positionTimer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Stack(
      alignment: Alignment.center,
      children: [
        GoogleMap(
            //mapType: MapType.normal,
            //https://github.com/afgprogrammer/Flutter-google-map-example
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (controller) {
              _googleMapController = controller;
            },
            //place markers on the screen
            markers: {
              Marker(
                markerId: const MarkerId('User'),
                infoWindow: const InfoWindow(title: 'You'),
                icon: userIcon,
                position: LatLng(positionuser.latitude, positionuser.longitude),
              ),
              ...Set.from(markers),
            },
            circles: incircles?.toSet() ?? {},
            onCameraMove: (position) {},
            polygons: {
              Polygon(
                polygonId: PolygonId('usthb'),
                points: polygonPoints,
                fillColor: Color(0xFF006491).withOpacity(0),
                strokeWidth: 1,
              ),
            }),
        Visibility(
          visible: _ride_Visible,
          child: Container(
            child: Positioned(
              // cardsgZ (1:99)
              left: 1 * fem,
              top: 625 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(14 * fem, 26 * fem, 14 * fem, 81 * fem),
                width: 414 * fem,
                height: 271 * fem,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48 * fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // image327L1 (1:80)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 15 * fem),
                      child: TextButton(
                        onPressed: () async {
                          //take a ride button
                          if (globals.velo != -1) {
                            try {
                              await cancelBike(token, globals.stationIdSource);
                              // ignore: empty_catches
                            } catch (e) {
                              print("ERROR!");
                            }
                          }
                          fetchAll();
                          stationSelection();
                          drawCircles();
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 386 * fem,
                          height: 56 * fem,
                          child: Image.asset(
                            //'assets/page-1/images/image-32.png',
                            'assets/page-1/images/takeride_button.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // image35nh3 (1:120)
                      onPressed: () {
                        //promotion button
                        Navigator.pushNamed(context, '/promotion');
                        // Navigator.pushNamedAndRemoveUntil(context, '/summary', (route) => false);
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Promotion()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 386 * fem,
                        height: 93 * fem,
                        child: Image.asset(
                          //'assets/page-1/images/image-35.png',
                          'assets/page-1/images/promotion.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Visibility(visible: _nav_bar_Visible, child: NavBar()),
        Visibility(visible: _notification_Visible, child: Unlock()),
        Visibility(
            visible: _cancelRide,
            child: Positioned(
              left: 125 * fem,
              top: 635 * fem,
              right: 125 * fem,
              bottom: 170 * fem,
              child: MyButton(
                onTap: _confirmCancelRide,
                text: 'Cancel Ride!',
              ),
            )),

        //Blur
        Positioned(
          // top blur
          top: 0 * fem,
          child: Align(
            child: SizedBox(
              width: 414 * fem,
              height: 107 * fem,
              child: Image.asset(
                'assets/page-1/images/blur_screen.png',
                // top blur
                // width: 414 * fem,
                // height: 129 * fem,
              ),
            ),
          ),
        ),

        Positioned(
          // group143Hnu (1:39)
          left: 0 * fem,
          top: 42 * fem,
          child: Container(
            width: 414 * fem,
            height: 90 * fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // haibikesdurofullseP5F (1:41)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 10 * fem),
                  child: Text(
                    'Your location >',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2189999989 * ffem / fem,
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.loose,
                  child: Text(
                    '${positionuser.latitude},${positionuser.longitude}',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2189999989 * ffem / fem,
                      color: Color(0xff000000),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Divider(
                  thickness: 0 * ffem,
                  color: Colors.transparent,
                ),
                Visibility(
                  visible: distance_window,
                  child: Container(
                    width: 170 * fem,
                    height: 35 * fem,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //padding:const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    child: Text(
                      '${_distanceInMeters.round()} m\nYour Bike: ${globals.velo}.',
                      textAlign:
                          TextAlign.center, // Center the text horizontally.
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2189999989 * ffem / fem,
                        color: Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (_menu_window)
          Positioned(
            // image19YEy (1:44)
            left: 28 * fem,
            top: 49 * fem,
            child: Align(
              child: SizedBox(
                width: 21 * fem,
                height: 15 * fem,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    //'assets/page-1/images/image-19.png',
                    'assets/page-1/images/menu.png',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ),
          ),
        Visibility(
          visible: _gps,
          child: Positioned(
            left: 350 * fem,
            top: topPosition * fem,
            child: Align(
              child: SizedBox(
                width: 51 * fem,
                height: 51 * fem,
                child: TextButton(
                  onPressed: () async {
                    positionuser = await _determinePosition();
                    _moveCamera(positionuser);
                    setState(() {
                      positionuser = positionuser;
                    });
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    'assets/page-1/images/gps.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _getId(int index) {
    return markers[index].markerId.value;
  }

  void stationSelection() {
    // if (id == null) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          title: Text('Stations'),
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: markers.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.directions_bike),
                  title: Text(markers[index].infoWindow.title!),
                  trailing: Text(markers[index].infoWindow.snippet!),
                  onTap: () {
                    id = _getId(index);
                    id_int = index;
                    Navigator.pop(context);
                    checkStock(id);
                  },
                );
              },
            ),
          ),
        );
      },
    );
    // } else {
    //   // wont happend
    // }
  }

  void _confirmRide() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          //wasnt const before in Row
          title: const Row(
            children: [
              Icon(Icons.notification_important, color: Colors.yellow),
              SizedBox(width: 8.0),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                    'Are you sure you want to start your Ride ?.\n Important : you cannot cancel your ride after clicking YES !',
                    style: TextStyle(fontSize: 16.0)),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                //returbBikeFromMarker(id);
                Navigator.of(context).pop();
                id = null;
                id_int = null;
                cancelBike(token, globals.stationIdSource);
              },
              child: Text("NO"),
            ),
            TextButton(
              onPressed: () async {
                setState(() {
                  _ride_Visible = !_ride_Visible;
                  _nav_bar_Visible = !_nav_bar_Visible;
                  _cancelRide = !_cancelRide;
                });
                Navigator.of(context).pop();
                setState(() {
                  topPosition = 615;
                });

                //ERROR

                //clear stack of screens == disable back button when starting a ride
                //Navigator.popUntil(context, ModalRoute.withName('/map'));
                //find another way to pop stack with out causing black screen

                _determinePositionMoveCamera(id_int);
                distance_window = true;
                _menu_window = false;
                // await calculateDistanceInMeters(2, positionuser);

                // hide gps because we dont need it
                _gps = false;
              },
              child: Text("YES"),
            ),
          ],
        );
      },
    );
  }
}
