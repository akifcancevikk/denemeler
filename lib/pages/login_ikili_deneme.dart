// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:denemeler/api.dart';
import 'package:denemeler/global.dart';
import 'package:denemeler/models/users.dart';
import 'package:denemeler/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginDenemesi extends StatelessWidget {
   LoginDenemesi({super.key});

 final TextEditingController spmail = TextEditingController();
 final TextEditingController sppassword = TextEditingController();
 final TextEditingController mail = TextEditingController();
 final TextEditingController password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: 200,),
          TextField(
            controller: spmail,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.email, color: Color.fromRGBO(195, 21, 28, 1)),
                prefixStyle: TextStyle(
                  color: Colors.red,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
          ),
          TextField(
            controller: sppassword,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.email, color: Color.fromRGBO(195, 21, 28, 1)),
                prefixStyle: TextStyle(
                  color: Colors.red,
                ),
                hintText: 'Şifre',
                hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
          ),
          ElevatedButton(onPressed: () {
            loginsp(context);
          }, child: Text("Giriş")),
          SizedBox(height: 100,),
        
          TextField(
            controller: mail,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.email, color: Color.fromRGBO(195, 21, 28, 1)),
                prefixStyle: TextStyle(
                  color: Colors.red,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.email, color: Color.fromRGBO(195, 21, 28, 1)),
                prefixStyle: TextStyle(
                  color: Colors.red,
                ),
                hintText: 'Şifre',
                hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
          ),
          ElevatedButton(onPressed: () {
            loginsp(context);
          }, child: Text("Giriş")),
        
        ],
            ),
      ),);
  }

void loginsp(BuildContext context) {
  Api.loginsp(spmail.text, sppassword.text).then((response) async {
    if (response.statusCode == 200) {
      var userData = json.decode(response.body);
      if (userData is List) {
        for (var item in userData) {
          Global.userDataList.add(Users.fromMap(item));
        }
      } else if (userData is Map<String, dynamic>) {
        Global.userDataList.add(Users.fromMap(userData));
      }

      Navigator.of(context).push(CupertinoPageRoute(builder: (context) => MainPage()));
    } else {
      Fluttertoast.showToast(
        msg: "Kullanıcı Girişi Hatalı",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  });
}


}