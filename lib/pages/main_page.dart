// ignore_for_file: use_build_context_synchronously

import 'package:denemeler/global.dart';
import 'package:denemeler/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: scaffoldKey,),
      appBar: CustomAppBar(scaffoldKey: scaffoldKey, showLeading: true,),
      body: Container(color: Colors.red,
      child: ElevatedButton(child: Text(Global.userDataList[0].temAdi),
      onPressed: () {
        logout();
      },
      ),
      ),
    );
  }

  // Ekledim: Kullanıcı çıkış yapma fonksiyonu
  void logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('isLoggedIn');
    Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => const LoginPage()));
  }
}
