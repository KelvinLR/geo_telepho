import 'package:flutter/material.dart';
import 'package:geo_telepho/views/map_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MapPage());
  }
}
