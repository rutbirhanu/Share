import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:roomies_frontend/presentaion/page/user/home_page.dart';
import 'package:roomies_frontend/presentaion/page/user/house_detail.dart';

void main() {
  runApp(const MyApp());
}
final GoRouter _route=GoRouter(
    routes: [
      GoRoute(path: "/",
      builder: (context, state){
        return HomePage();
      }),
      GoRoute(path: "/houseDetail",
      builder: (context, state){
        return HouseDetail();
      }),
    ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    routerConfig: _route,
      // routerDelegate: RouterDelegate,
    );
  }
}

class MyHomePage extends StatefulWidget {
 const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final imageList=[
    // "https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/home-improvement/wp-content/uploads/2022/07/download-23.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYOw0fUCjK_gVeGQVGv4RUsddx4zz8Q6scdSd2Ri36yw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSf9_eWDsUTlYnJZeGarBE14TFiZ1W-KS1_lk6jwRyow&s"
  ];

  @override
  Widget build(BuildContext context) {
   double width=MediaQuery.of(context).size.width;
   var index;
    return Scaffold(
      backgroundColor: Colors.black87,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        color: Colors.white24,
        animationDuration: Duration(milliseconds: 500),
        buttonBackgroundColor: Color.fromRGBO(244, 196, 48,0.9),
        onTap: (idx){
          setState(() {
            index=idx;
          });
        },
        items: [
          CurvedNavigationBarItem(child:  Icon(Icons.home, color: Colors.white,), label: "home"),
          CurvedNavigationBarItem(child:  Icon(Icons.comment, color: Colors.white),label: "comment"),
          CurvedNavigationBarItem(child:  Icon(Icons.link_rounded, color: Colors.white),label: "link"),
          CurvedNavigationBarItem(child:  Icon(Icons.person, color: Colors.white),label: "person")
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(244, 196, 48,0.9),
      ),
      drawer: Drawer(
        surfaceTintColor: Colors.black87,
      ),
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: BellShape(),
                      child: Container(
                        height: 270,
                        width: width,
                        decoration: const BoxDecoration(
                          gradient:LinearGradient(
                            colors: [ Color.fromRGBO(244, 196, 48,0.8), Color.fromRGBO(255, 253, 208,0.5)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter
                          )
                        ),
                      ),
                    ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                  CarouselSlider.builder(
                      itemCount: imageList.length,
                      itemBuilder: (context, idx, realidx){
                        final urlImage= imageList[idx];
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image:NetworkImage(urlImage),
                            fit: BoxFit.cover)
                          ),
                        );
                      },
                  options: CarouselOptions(
                    height: 150,
                    autoPlay: true,
                    viewportFraction: 1

                  ))
                      ],
                    ),
                  ),
                ),

                ]),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color.fromRGBO(0,0, 0, 0.2), Colors.black]
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("What Our Customers Say", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,  color: Colors.white),),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: CommentCard()),
                                SizedBox(width: 18,),
                                Expanded(child: CommentCard())
                              ],
                            ),
                          ),
                          SizedBox(height: 40,),
                          Text("Services We Provide",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white)),
                          ServiceCard(),
                          SizedBox(height: 5,),
                          ServiceCard(),
                          SizedBox(height: 5,),
                          ServiceCard(),
                        ]),
                  ),

              ],
            ),
          )
    );
  }
}


class BellShape extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    var path=Path();
    path.moveTo(-40,0);
    path.cubicTo(0,size.height, size.width, size.height+50, size.width+20, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return false;
  }
}


class CommentCard extends StatelessWidget{
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 80,
                padding: const EdgeInsets.fromLTRB(0,0,10,2),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                  child: Image(
                    image: NetworkImage("https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL3BsYXlcLzBiN2Y0ZTliLWY1OWMtNDAyNC05ZjA2LWIzZGMxMjg1MGFiNy0xOTIwLTEwODAuanBnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjo4Mjh9fX0="),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text("Henok Meri", style: TextStyle(fontSize: 12),)
            ],
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft:  Radius.circular(0), bottomRight:  Radius.circular(10))
            ),
            margin: EdgeInsets.all(9),
            padding: EdgeInsets.all(8),
            child: Text("this is amazing and i use this app and find roomate and ad house to live on", style: TextStyle(fontSize: 11, color: Colors.white)),
          )
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)
            ),
            child: Image(
              image:NetworkImage("https://media.istockphoto.com/id/1317958548/photo/puzzle-house-with-a-missing-piece-the-acquisition-or-construction-comfortable-dream-home.jpg?s=612x612&w=0&k=20&c=LPKFx9EcOI7SsIHGqcDwmmOBX99FSRJR-DFOhcUtEVc="),
              height: 55,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(width: 2, color: Colors.white54)
                ),
              child: Text("Roommate recommendation to help our users find their dream person to live with", style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }

}