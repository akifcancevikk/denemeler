// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_unnecessary_containers, avoid_unnecessary_containers, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, duplicate_ignore
import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});
  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}
class _UserInfoPageState extends State<UserInfoPage> {


  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color.fromRGBO(34, 45, 50, 1),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text('denme'),),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
                padding: EdgeInsets.all(5),
                sliver: SliverGrid(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2, mainAxisExtent: 140,),
                delegate: SliverChildListDelegate(
                  [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
                      child: Column(
                      children: [
                        Expanded(
                flex: 7,
                child: Container(          
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(12),
                  color: Colors.transparent,
                  child: Text("Bugünkü Siparişler", style: TextStyle(color: Color.fromRGBO(34, 45, 50, 1),fontSize: 20, fontWeight: FontWeight.bold,),),
                ),
              ),
                Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
               
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10), )
                  ),
                  
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text("20000000", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Color.fromRGBO(34, 45, 50, 1)),),
                      Text("ADET", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Color.fromRGBO(34, 45, 50, 1)),),
                    ],),
                  
                  ),
              ),         
                      ],
                    )),
                  ),


























                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
                      child: Row(
                      children: [
                        Expanded(
                flex: 23,
                child: Container(          
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Text("Bu Ayki Siparişler", style: TextStyle(color: Color.fromRGBO(34, 45, 50, 1),fontSize: 16, fontWeight: FontWeight.bold,),),
                ),
              ),
                Expanded(
                flex: 17,
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(133, 39, 43, 1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10), )
                  ),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("ADET", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Colors.white),),
                      Text("200", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),),
                    ],),
                  
                  ),
              ),
              
                      ],
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
                      child: Row(
                      children: [
                        Expanded(
                flex: 23,
                child: Container(          
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Text("Günlük Ciro", style: TextStyle(color: Color.fromRGBO(34, 45, 50, 1),fontSize: 16, fontWeight: FontWeight.bold,),),
                ),
              ),
                Expanded(
                flex: 17,
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(133, 39, 43, 1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10), )
                  ),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("TL", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Colors.white),),
                      Text("200", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),),
                    ],),
                  
                  ),
              ),
              
                      ],
                    )),
                  ),                         
                  
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
                      child: Row(
                      children: [
                        Expanded(
                flex: 23,
                child: Container(          
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Text("Aylık Ciro", style: TextStyle(color: Color.fromRGBO(34, 45, 50, 1),fontSize: 16, fontWeight: FontWeight.bold,),),
                ),
              ),
                Expanded(
                flex: 17,
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(133, 39, 43, 1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10), )
                  ),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("TL", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: Colors.white),),
                      Text("200", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),),
                    ],),
                  
                  ),
              ),
              
                      ],
                    )),
                  ),
                                  
                  ]
                ),
              ),
             ), 

              SliverPadding(padding: EdgeInsets.all(5),
              sliver: SliverGrid(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1, mainAxisExtent: 80,),
                delegate: SliverChildListDelegate(
                  [

                 Padding(

                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
                      child: Row(
                      children: [
                        Expanded(
                flex: 23,
                child: Container(          
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Text("Bekleyen Siparişim", style: TextStyle(color: Color.fromRGBO(34, 45, 50, 1),fontSize: 16, fontWeight: FontWeight.bold,),),
                ),
              ),
                Expanded(
                flex: 17,
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(133, 39, 43, 1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10), )
                  ),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("200", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),),
                    ],),
                  
                  ),
              ),
              
                      ],
                    )),
                  ),
                 
                 Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
                      child: Row(
                      children: [
                        Expanded(
                flex: 23,
                child: Container(          
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Text("Müşterim", style: TextStyle(color: Color.fromRGBO(34, 45, 50, 1),fontSize: 16, fontWeight: FontWeight.bold,),),
                ),
              ),
                Expanded(
                flex: 17,
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(133, 39, 43, 1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10), )
                  ),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("200", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),),
                    ],),
                  
                  ),
              ),
              
                      ],
                    )),
                  ),
                 
                 Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
                      child: Row(
                      children: [
                        Expanded(
                flex: 23,
                child: Container(          
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Text("Bakiye", style: TextStyle(color: Color.fromRGBO(34, 45, 50, 1),fontSize: 16, fontWeight: FontWeight.bold,),),
                ),
              ),
                Expanded(
                flex: 17,
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(133, 39, 43, 1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10), )
                  ),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("200", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),),
                    ],),
                  
                  ),
              ),
              
                      ],
                    )),
                  ),
                 
                 Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
                      child: Row(
                      children: [
                        Expanded(
                flex: 23,
                child: Container(          
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Text("Geciken Bakiye", style: TextStyle(color: Color.fromRGBO(34, 45, 50, 1),fontSize: 16, fontWeight: FontWeight.bold,),),
                ),
              ),
                Expanded(
                flex: 17,
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(133, 39, 43, 1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10), )
                  ),
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("200", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),),
                    ],),
                  
                  ),
              ),
              
                      ],
                    )),
                  ),
                  
                  ]
                ), 

                ),
)           
          ]
        ),
        ),
        );
  }
}