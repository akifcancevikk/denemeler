// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/bg.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
          ),
        Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Error Dialog Deneme'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.5),
            borderRadius: BorderRadius.all(Radius.circular(25))    
            ),
            height: 270,
            width: 250,
            child: Column(),
          ),
        ),
        ),
      ],
    );
  }
}