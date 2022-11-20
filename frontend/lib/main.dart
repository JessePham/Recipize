import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'camera_screen_display.dart';

CameraDescription camera;

Future<void> main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  camera = cameras.first;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipize',
      theme: ThemeData.dark(),
      home: CameraScreenDisplay(camera: camera)
    );
  }
}
