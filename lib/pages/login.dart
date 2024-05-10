// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, library_private_types_in_public_api

import 'dart:convert';

import 'package:denemeler/api.dart';
import 'package:denemeler/global.dart';
import 'package:denemeler/models/users.dart';
import 'package:denemeler/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController takeMail = TextEditingController();
  final TextEditingController takePassword = TextEditingController();
  final List user = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(child: Container()),
                        SizedBox(height: 300),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Sayın Danışman',
                              style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Lütfen Giriş Yapınız',
                              style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: TextField(
                            controller: takeMail,
                            style: TextStyle(color: Colors.black),
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
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            obscureText: true,
                            controller: takePassword,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.vpn_key_rounded, color: Color.fromRGBO(195, 21, 28, 1)),
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
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: CupertinoButton(
                            color: Color.fromRGBO(195, 21, 28, 1),
                            borderRadius: BorderRadius.circular(15),
                            onPressed: () async {
                              String temMail = takeMail.text;
                              String temSifre = takePassword.text;      
                              SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                              sharedPreferences.setString('email', temMail);
                              sharedPreferences.setString('password', temSifre);
      
                              loginsp();
                            },
                            pressedOpacity: 0.5,
                            child: Text(
                              'Giriş Yap',
                              style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        CupertinoButton(
                          onPressed: () {},
                          child: Text(
                            'Şifremi Unuttum',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        SizedBox(height: 8),
                      ],
                    ),
                    Positioned(
                      left: 0,
                      top: 200,
                      right: 0,
                      child: SizedBox(
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void loginsp() async {
  Api.loginsp(takeMail.text, takePassword.text).then((response) async {
    if (response.statusCode == 200) {
      var userData = json.decode(response.body);
      if (userData is List) {
        for (var item in userData) {
          Global.userDataList.add(Users.fromMap(item));
        }
      } else if (userData is Map<String, dynamic>) {
        Global.userDataList.add(Users.fromMap(userData));
      }

      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.setBool('isLoggedIn', true);

      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => MainPage()));
    } else {
      Fluttertoast.showToast(
        msg: "Kullanıcı Girişi Hatalı",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  });
}


  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  void checkLoginStatus() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isLoggedIn = sharedPreferences.getBool('isLoggedIn') ?? false;
    if (isLoggedIn) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => MainPage()));
    }
  }
}
