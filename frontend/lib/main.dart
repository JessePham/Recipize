
import 'app.dart';
import 'camera_screen_display.dart';
import 'model/app_state_model.dart';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

CameraDescription camera;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  camera = cameras.first;
  return runApp(
    ChangeNotifierProvider<AppStateModel>(
      create: (context) => AppStateModel()..loadRecipes(),
      child: CupertinoStoreApp(),
    ),
  );
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
