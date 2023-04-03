import 'package:flutter/material.dart';
import 'package:myapp/screens/promotion.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/screens/profile_menu.dart';

import './buttons.dart';
import './nav_bar_new.dart';

class MapScreenNew extends StatefulWidget {
  @override
  State<MapScreenNew> createState() => _MapScreenNewState();
}

class _MapScreenNewState extends State<MapScreenNew> {
  String id;
  String userDestStation = '';

  //Starting location
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(36.71228369662267, 3.1805848553156153),
    zoom: 16.5,
  );

  GoogleMapController _googleMapController;
  Marker _user;

  Position positionuser = Position(
    latitude: 0.0,
    longitude: 0.0,
  );
  Position _dest, _userDest;
  String _selectedStationName;
  bool _ride_Visible = true;
  bool _nav_bar_Visible = false;
  String _selectedMarkerId = '';

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

  List<Marker> _markers = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(36.715957, 3.186346),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: InfoWindow(
        title: 'Parking Enseignants',
        snippet: 'Stock: 10',
      ),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(36.717171, 3.183816),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: InfoWindow(
        title: 'Faculté De Mathematique',
        snippet: 'Stock: 5',
      ),
    ),
    Marker(
      markerId: MarkerId('3'),
      position: LatLng(36.713483, 3.176465),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: InfoWindow(
        title: 'Project Initiative Club',
        snippet: 'Stock: 2',
      ),
    ),
    Marker(
      markerId: MarkerId('4'),
      position: LatLng(36.713716, 3.180834),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: InfoWindow(
        title: 'Bibliothèque Universitaire',
        snippet: 'Stock: 21',
      ),
    ),
    Marker(
      markerId: MarkerId('5'),
      position: LatLng(36.709513, 3.181112),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: InfoWindow(
        title: 'Nouveaux Blocs Salles TP',
        snippet: 'Stock: 1',
      ),
    ),
  ];

  Future<Position> _determinePosition() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
      timeLimit: const Duration(seconds: 10),
    );

    return position;
  }

  @override
  void dispose() {
    _googleMapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
            GoogleMap(
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              initialCameraPosition: _initialCameraPosition,
              onMapCreated: (controller) => _googleMapController = controller,
              //place markers on the screen
              markers: {if (_user != null) _user, ...Set.from(_markers)},
              //onLongPress: _setDestination,
            ),


          Visibility(
            visible: _ride_Visible,
            child: Container(
              child: Positioned(
                // cardsgZ (1:99)
                left: 1 * fem,
                top: 625 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      14 * fem, 26 * fem, 14 * fem, 81 * fem),
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
                          onPressed: () {
                            //Start sending user location
                            //take a ride button
                            stationSelection();
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Promotion()));
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

          //Blur
          Positioned(
            // rectangle277p8d (1:38)
            left: 0 * fem,
            top: 0 * fem,

            child: Align(
              child: SizedBox(
                width: 414 * fem,
                height: 109 * fem,
                child: Image.asset(
                  'assets/page-1/images/rectangle-277.png',
                  // top blur
                  width: 414 * fem,
                  height: 129 * fem,
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
              height: 44 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // haibikesdurofullseP5F (1:41)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 10 * fem),
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
                ],
              ),
            ),
          ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfileMenu()));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    //'assets/page-1/images/image-19.png',
                    'assets/page-1/images/menu.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 350 * fem,
            top: 559 * fem,
            child: Align(
              child: SizedBox(
                width: 51 * fem,
                height: 51 * fem,
                child: TextButton(
                  onPressed: () async {
                    positionuser = await _determinePosition();
                    _googleMapController.animateCamera(
                        CameraUpdate.newCameraPosition(CameraPosition(
                            target: LatLng(
                                positionuser.latitude, positionuser.longitude),
                            zoom: 17))
                        // ignore: avoid_print
                        );
                    setState(() {
                      _user = Marker(
                        markerId: const MarkerId('User'),
                        infoWindow: const InfoWindow(title: 'You'),
                        icon: BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueBlue),

                        //icon :'assets/icons/bike.png' as BitmapDescriptor,
                        //change the icon after

                        position: LatLng(
                            positionuser.latitude, positionuser.longitude),
                      );
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
        ],
      ),
    );
  }

  String _getId(int index) {
    return _markers[index].markerId.value;
  }

  void stationSelection() {
    if (id == null) {
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
                itemCount: _markers.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.directions_bike),
                    title: Text(_markers[index].infoWindow.title),
                    trailing: Text(_markers[index].infoWindow.snippet),
                    onTap: () {
                      id = _getId(index);
                      Navigator.pop(context);

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
                                Icon(Icons.check_circle, color: Colors.green),
                                SizedBox(width: 8.0),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Text(
                                      'Station \n "' +
                                          _markers[index].infoWindow.title +
                                          '"\n successfully selected. \n\n Go to your Station and Follow instruction to unlock Bike.',
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
                    },
                  );
                },
              ),
            ),
          );
        },
      );
    } else {
      // wont happend
    }
  }

  void _confirmRide() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          title: Row(
            children: [
              //Icon(Icons.error, color: Colors.red),
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
              onPressed: () {
                Navigator.of(context).pop();
                id = null;
              },
              child: Text("NO"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _ride_Visible = !_ride_Visible;
                  _nav_bar_Visible = !_nav_bar_Visible;
                });
                Navigator.of(context).pop();
              },
              child: Text("YES"),
            ),
          ],
        );
      },
    );
  }
}
