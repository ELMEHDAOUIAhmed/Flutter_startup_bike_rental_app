# 1 Remove ability to go back  to the previous page by using 
automaticallyimplyleading : false,

make it work

# 2 Next milestone add login/signup


# 3 Dynamic Text fields


# 4 Fix duplicate photos

dont forget to add them to pubspec.yaml in assets

https://www.figma.com/file/SO2VnAVSZdmTCXAhR5YJZh/Untitled?node-id=0-1&t=Bbni9aMsh1txsTS6-0


https://www.figma.com/file/yvldKAgGWsMsoolTNuVDEh/Untitled?node-id=0-1&t=4H8Rf9j9wJQJocWR-0


 # 5 //important remove map2 3 4 5 and unlock 1 and 2 , make the notification you have to learn it
https://www.figma.com/file/ngtERbOap4EpKAYQTq88WC/Untitled?node-id=0%3A1&t=6pzUY03zgOoVUhVJ-1


https://www.figma.com/file/SO2VnAVSZdmTCXAhR5YJZh/Untitled?node-id=0%3A1&t=1dRxv5wvbF65C5XM-1


flutter sdk  was 
sdk: '>=2.18.2 <3.0.0'


minSdkVersion flutter.minSdkVersion


Set the minSdkVersion in android/app/build.gradle:
line 50 was 


minSdkVersion flutter.minSdkVersion



  // //using Location Plugin 
  // //user location
  // Location location = new Location();
  // LocationData _locationData;

  // // create getLocation function

  // Future<dynamic> getLocation()async{
  //   await location.requestService();
  //   _locationData = await location.getLocation();
  //   return _locationData;
  // }

//// ignore: avoid_print
// getLocation().then((value) => print(value) ); // value hold lat & long of user