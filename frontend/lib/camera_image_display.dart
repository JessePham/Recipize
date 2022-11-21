import 'dart:io';
import 'package:flutter/material.dart';

class DisplayCameraImageScreen extends StatelessWidget {
  final String imagePath;
  const DisplayCameraImageScreen({Key key, this.imagePath}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Display')),
      body: Image.file(File(imagePath)),
      floatingActionButton: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () { },
                  child: Icon(Icons.delete_forever),
                ),
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () { },
                  child: Icon(Icons.done),
                )
              ],
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}