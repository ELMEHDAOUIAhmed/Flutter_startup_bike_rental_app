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
      margin: EdgeInsets.fromLTRB(25 * fem, 120 * fem, 25 * fem, 120 * fem),
      child: Stack(
        children: [
          _cameraController != null
              ? SizedBox.expand(
                  child: AspectRatio(
                    aspectRatio: _cameraController.value.aspectRatio,
                    child: CameraPreview(_cameraController),
                  ),
                )
              : Container(color: Colors.black),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: ElevatedButton(
                  onPressed: takePicture,
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                    primary: Colors.white.withOpacity(0.8),
                  ),
                  child: Icon(
                    Icons.camera_outlined,
                    size: 55.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
