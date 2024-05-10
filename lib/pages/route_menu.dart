// ignore_for_file: prefer_const_constructors

import 'package:denemeler/pages/error_dialog.dart';
import 'package:denemeler/pages/user_info_deneme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteMenu extends StatelessWidget {
  const RouteMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Route Menu'),
        centerTitle: true,
        leading: Icon(Icons.workspaces_outline),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => ErrorDialog(),));
              }, 
              child: Text('Error Dialog')),
              SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => UserInfoPage(),));
              }, 
              child: Text('User Info Test')),
          ],
        ),
      ),
    );
  }
}