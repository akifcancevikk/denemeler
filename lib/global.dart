// ignore_for_file: prefer_const_constructors, use_super_parameters, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:denemeler/models/users.dart';
import 'package:denemeler/pages/login.dart';
import 'package:denemeler/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Global {
  static List<Users> userDataList = [];
}


class CustomCardWidget extends StatelessWidget {
  final String baslik;
  final IconData icon;
  final Function onTap;

  const CustomCardWidget({
    Key? key,
    required this.baslik,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onTap as void Function()?,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
          height: 110,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    baslik,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(34, 45, 50, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.bottomRight,
                  color: Colors.black.withOpacity(0.001),
                  child: Icon(
                    icon,
                    size: 65,
                    color: Color.fromRGBO(133, 39, 43, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool showLeading;

  const CustomAppBar(
    {
    Key? key,
    required this.scaffoldKey,
    this.showLeading = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showLeading ? IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
        Navigator.pop(context);
      },) : null,
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      
      actions: [
        IconButton(
          icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.white,),
          onPressed: () {
            // Add your onPressed logic here
          },
        ),
        IconButton(
          icon: Icon(Icons.shopping_basket_outlined, color: Colors.white,),
          onPressed: () {
            // Add your onPressed logic here
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;

  const CustomListTile({
    Key? key,
    required this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity(vertical: -0),
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      onTap: onTap,
    );
  }
}

class  CustomDrawer extends StatelessWidget {

final GlobalKey<ScaffoldState> scaffoldKey;
    CustomDrawer({
    Key? key, required this.scaffoldKey,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Drawer(
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [

        Container(
          padding: EdgeInsets.only(top: 20),
        
            height: 90,
          child: Row(
            
            children: [
              Expanded(
                flex: 3,
                child: Container(
                child: Icon(Icons.person, size: 60, color: Colors.white,),
              )),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                 
                 Text(Global.userDataList[0].temAdi, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),  
                 Text(Global.userDataList[0].temSonSiparisTarih.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),         
                  ],
                ),
              )        
            ],
          ),
        ),  
        CustomListTile(
          icon: Icons.person, 
          title: 'Profil',
          onTap: () {        
            Navigator.push(context, CupertinoPageRoute(builder: (context)=> MainPage()));
            scaffoldKey.currentState!.openEndDrawer();
               
          },
          ),   
        ListTile(
          
          shape: RoundedRectangleBorder(      
          side: BorderSide(color: Color.fromRGBO(146, 41, 59, 1), width: 2),
          ), 
          dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(
            Icons.add_shopping_cart_sharp, color: Color.fromRGBO(146, 41, 59, 1),
          ),
          title: const Text('Sipariş Oluştur', style: TextStyle(color: Color.fromRGBO(146, 41, 59, 1), fontWeight: FontWeight.bold, fontSize: 17),),
          onTap: () { 
          },
        ),
        ExpansionTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -0),
            children: [
              ListTile( 
                dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(Icons.arrow_forward, size: 15,),
               title: Text("İzolasyon Ürünleri"),
            onTap: (){             //action on press
            },
        ),
              ListTile( 
                dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(Icons.arrow_forward, size: 15,),
               title: Text("Elektrikli El Aletleri"),
            onTap: (){             //action on press
            },
        ),
              ListTile( 
                dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(Icons.arrow_forward, size: 15,),
               title: Text("Aşındırıcı Ürünleri"),
            onTap: (){               //action on press
            },
        ),
              ListTile( 
                dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(Icons.arrow_forward, size: 15,),
               title: Text("Elektrik Ekipmanları"),
            onTap: (){      //action on press
            },
        ),
              ListTile( 
                dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(Icons.arrow_forward, size: 15,),
               title: Text("Hırdavat ve Diğerleri"),
            onTap: (){        //action on press
            },
        ),
              ListTile( 
                dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(Icons.arrow_forward, size: 15,),
               title: Text("Rekabetçi Ürünleri"),
            onTap: (){             //action on press
            },
        ),
              ListTile( 
                dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(Icons.arrow_forward, size: 15,),
               title: Text("Temizlik ve Gıda Ürünleri"),
            onTap: (){ 
               //action on press
            },
        ),    
            ],
            leading: Icon(Icons.grid_on, color: Colors.black,),
            title: Text('Kategoriler'),
          ),        
        CustomListTile(
          icon: Icons.control_camera_rounded, 
          title: 'Siparişler',
          onTap: () {           
          },
          ),
        CustomListTile(
          icon: Icons.insert_chart_outlined, 
          title: 'Raporlama',
          onTap: () {           
          },
          ),
        CustomListTile(
          icon: Icons.copy_sharp, 
          title: 'Müşteri Adres Ekle',
          onTap: () {           
          },
          ),
        CustomListTile(
          icon: Icons.map, 
          title: 'E-Ödeme',
          onTap: () {           
          },
          ),
        CustomListTile(
          icon: Icons.shopping_cart_rounded, 
          title: 'Sepetim',
          onTap: () {           
          },
          ),
        ListTile(
          shape: RoundedRectangleBorder(      
          side: BorderSide(color: Color.fromRGBO(146, 41, 59, 1), width: 2),
          ), 
          dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(
            Icons.bookmark, color: Color.fromRGBO(146, 41, 59, 1),
          ),
          title: const Text('Kampanyalı Ürünler', style: TextStyle(color: Color.fromRGBO(146, 41, 59, 1), fontWeight: FontWeight.bold, fontSize: 17),),
          onTap: () { 
          },
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(
            Icons.cleaning_services_outlined,
            color: Colors.blue,
          ),
          title: const Text('Sepeti Temizle'),
          onTap: () {
          },
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -0),
          tileColor: Colors.green.shade200,
          enabled: false,
          leading: Icon(
            Icons.monetization_on_outlined, color: Colors.black
          ),
          title: const Text('32,50 TL',style: TextStyle(color: Colors.black)),
          onTap: () {
          },
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -0),
          tileColor: Colors.blue.shade200,
          enabled: false,
          leading: Icon(
            Icons.euro_outlined, color: Colors.black
          ),
          title: const Text('34,70',style: TextStyle(color: Colors.black)),
          onTap: () {
            Navigator.pop(context);
          },
        ),      
        ListTile(
          dense: true,
          visualDensity: VisualDensity(vertical: -0),
          leading: Icon(
            Icons.exit_to_app,
            color: Colors.red,
          ),
          title: const Text('Çıkış Yap'),
          onTap: () {
            Global.userDataList = [];
           // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context)=>LoginPage()), (route) => false);
       },
      ),  
     ],
    ),
   );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10, top: 8),
      height: 60,
      child: TextField(
        onTapOutside: (event){
          FocusManager.instance.primaryFocus?.unfocus();
        },
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search),
          hintText: 'Arama',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomFloatingActionButton({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 40,
          bottom: 30,
          child: FloatingActionButton(
            elevation: 1,
            backgroundColor: Color.fromRGBO(133, 39, 43, 1),
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.menu, color: Colors.white,),
          ),
        ),
      ],
    );
  }
}

