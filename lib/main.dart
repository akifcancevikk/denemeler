// ignore_for_file: unused_import, prefer_const_constructors

import 'package:denemeler/pages/login.dart';
import 'package:denemeler/pages/login_ikili_deneme.dart';
import 'package:denemeler/pages/route_menu.dart';
import 'package:denemeler/pages/user_info_deneme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() { 
  runApp( const MyApp());
  }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: RouteMenu(),
    );
  }
}