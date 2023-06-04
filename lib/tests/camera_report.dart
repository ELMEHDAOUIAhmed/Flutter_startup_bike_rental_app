
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraReport extends StatefulWidget {
  const CameraReport({Key key}) : super(key: key);

  @override
  State<CameraReport> createState() => _CameraReportState();
}

class _CameraReportState extends State<CameraReport> {
  CameraController _cameraController;
  List<CameraDescription> _cameraList;
  bool _isCameraReady = false;
  bool _showCapturedPhoto = false;
  Uint8List _imageBytes;

  @override
  void initState() {
    super.initState();

    // Initialize camera controller
    _initializeCameraController();
  }

  Future<void> _initializeCameraController() async {
    // Get available cameras
    final cameras = await availableCameras();

    // Choose the first camera
    final camera = cameras.first;

    // Initialize camera controller
    _cameraController = CameraController(
      camera,
      ResolutionPreset.high,
    );

    // Add listener to check when camera is initialized
    _cameraController.addListener(() {
      if (_cameraController.value.isInitialized) {
        setState(() {
          _isCameraReady = true;
        });
      }
    });

    // Initialize camera controller
    await _cameraController.initialize();
  }

  @override
  void dispose() {
    // Dispose of camera controller
    _cameraController.dispose();
    super.dispose();
  }

  Future<void> takePicture() async {
    // Check if camera is ready and not already taking a picture
    if (!_isCameraReady || _cameraController.value.isTakingPicture) {
      return;
    }

    try {
      // Take picture and get image data

      setState(() {
        _showCapturedPhoto = true;
      });
    } catch (e) {
      // Error taking picture
      // Do something
    }
  }


Widget _buildImage(){
  
}

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    // Show captured photo with buttons if available
    // Show captured photo with buttons if available
    return Stack(children: [
      Visibility(
        visible: _showCapturedPhoto,
        child: Container(
          margin: EdgeInsets.fromLTRB(25 * fem, 120 * fem, 25 * fem, 120 * fem),
          child: Column(
            children: [
              Expanded(
                child: Center(child: _buildImage()
                ),
              ),
            ],
          ),
        ),
      ),
      // Show camera preview if photo not yet captured
      Container(
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
                  padding: const EdgeInsets.only(bottom: 50),
                  child: ElevatedButton(
                    onPressed: takePicture,
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.8),
                      padding: const EdgeInsets.all(5),
                    ),
                    child: const Icon(
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
      ),
    ]);
  }
}
