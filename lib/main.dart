import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp()),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  build(BuildContext context){
    return const MaterialApp(
      home: HomeScreen(),
    );
  }

 
}