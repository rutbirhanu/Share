import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HouseDetail extends StatelessWidget{
  const HouseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
   return Scaffold(
     body: SafeArea(
       child: Container(
         height: height,
         child: Stack(
           children: [
             Image(image: NetworkImage("https://www.redfin.com/blog/wp-content/uploads/2021/08/220-Maryland-Ave-21122-1.jpg"),
             fit: BoxFit.fill,),
             Positioned(
               bottom: 0,
               left: 0,
               child: Container(
                 width:width,
                 height: height/2,
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     begin: Alignment.topCenter,
                     end: Alignment.bottomCenter,
                     colors: [
                       Color.fromRGBO(0, 0, 0,0.2),
                       Color.fromRGBO(0, 0, 0,0.8),
                       Color.fromRGBO(0, 0, 0,0.9),
                       Color.fromRGBO(0, 0, 0,1),
                     ]
                   )
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.only(left: 40),
                       child: Row(
                         children: [
                          Icon(Icons.room, color: Colors.white60,),
                           SizedBox(width: 17,),
                           Text("Bole, Addis Ababa ", style: TextStyle(color: Colors.white),),
                         ],
                       ),
                     ),
                     SizedBox(height: 8,),
                     Padding(
                       padding: const EdgeInsets.only(left: 40),
                       child: Row(
                         children: [
                           Icon(Icons.square_foot, color: Colors.white,),
                           SizedBox(width: 17,),
                           Text("Modern | 21,000 square feet", style: TextStyle(color: Colors.white)),
                         ],
                       ),
                     ),
                     SizedBox(height: 8,),
                     Padding(
                       padding: const EdgeInsets.only(left: 36),
                       child: Row(
                         children: [
                           Icon(Icons.monetization_on, color: Colors.green,),
                           SizedBox(width: 17,),
                           Text("12,000 ETB per month", style: TextStyle(color: Colors.white)),
                         ],
                       ),
                     ),
                     SizedBox(height: 8,),
                     Padding(
                       padding: const EdgeInsets.only(left: 40),
                       child: Row(
                         children: [
                           Icon(Icons.roofing_outlined, color: Colors.red,),
                           SizedBox(width: 17,),
                           Text("1 bedroom  |  2 toilet  | 1 kitchen", style: TextStyle(color: Colors.white)),
                         ],
                       ),
                     ),
                     SizedBox(height: 8,),
                     Padding(
                       padding: const EdgeInsets.only(left: 40),
                       child: Text("Total of 5 rooms", style: TextStyle(color: Colors.white)),
                     ),
                     Expanded(
                       child: Align(
                         alignment: Alignment.bottomCenter,
                         child: Padding(
                           padding: const EdgeInsets.only(bottom: 30),
                           child: ElevatedButton(onPressed: (){}, child: Text("Contact Broker"), style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(Color.fromRGBO(244, 196, 48,0.9)),
                             foregroundColor: MaterialStateProperty.all(Colors.black),
                             textStyle: MaterialStateProperty.all(TextStyle(fontWeight: FontWeight.bold))
                           ),),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
             )
           ],
         ),
       )
     ),
   );
  }

}