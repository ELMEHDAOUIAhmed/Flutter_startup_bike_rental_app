import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '/widgets/camera_widget.dart';

class CameraReport extends StatefulWidget {
  @override
  _CameraReportState createState() => _CameraReportState();
}

class _CameraReportState extends State<CameraReport> {
  CameraController _cameraController;
  List<CameraDescription> _cameraList;
  bool _isCameraReady = false;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    // Get available cameras
    _cameraList = await availableCameras();

    // Select back camera
    _cameraController = CameraController(
      _cameraList.first,
      ResolutionPreset.max,
    );

    // Initialize camera and check if it's ready
    await _cameraController.initialize();
    setState(() {
      _isCameraReady = true;
    });
  }

  Future<void> takePicture() async {
    // Check if camera is ready and not already taking a picture
    if (!_isCameraReady || _cameraController.value.isTakingPicture) {
      return;
    }

    try {
      // Take picture and get image data
      final image = await _cameraController.takePicture();
      final imageBytes = await image.readAsBytes();
    } catch (e) {
      // Error taking picture
      // Do something
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    // Show captured photo with buttons if available

    // Show camera preview if photo not yet captured
    return Container(
      margin: EdgeInsets.fromLTRB(50 * fem, 80 * fem, 50 * fem, 80 * fem),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _cameraController != null
            ? CameraPreview(_cameraController)
            : Container(color: Colors.black),
            
        floatingActionButton: FloatingActionButton(
          onPressed: takePicture,
          backgroundColor: Colors.white
              .withOpacity(1), // Make button semi-transparent white
          child: Icon(Icons.camera_outlined, size: 55.0,
              color: Colors.black), // Set icon color to black
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
