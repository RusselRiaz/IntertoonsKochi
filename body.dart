import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:get/route_manager.dart';

import 'BottomNavigationBar/Bottom_nav_bar.dart';
import 'HomeProduct.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4 - 44,
                  decoration: BoxDecoration(color: Colors.indigo[400],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    )
                  ),
                ),
                Positioned(
                  top: 100,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,),
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("images/food.jpg"),fit: BoxFit.fill
                        )
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(height: 60,),
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text("Quick Delivery at",style: TextStyle(fontSize: 26),),
                Text("your door",style: TextStyle(fontSize: 26),),
                SizedBox(height: 30,),
                Text("Nullam a tincidunt tortor. Etiam various sed velit ac",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 5,),
                Text("vehicula. Suspendisse quis ligula sed ipsum",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 5,),
                Text("dignissm facilisis. Maecenas dappibus vitae",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 35,),
                Text("○ ○ ○")
              ],
            ),
          ),
          SizedBox(height: 90,),
          GestureDetector(
            onTap: (){
              Get.to(Bottom_nav_home());
            },
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.indigo[400]),
              child: Center(child: Text("Get Started",style: TextStyle(color: Colors.amber[600]),)),
            ),
          ),
          Container(
            height: 30,
          )
        ],
      ),
    ]
    );
  }
}
