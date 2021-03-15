import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Food",style: TextStyle(fontSize: 15),),
        toolbarHeight: 100,
        backgroundColor: Colors.indigo[400],
        elevation: 0.0,
      ),
      body: ListView(
        children: [Column(
          children: [
            Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4 - 27,
                  decoration: BoxDecoration(color: Colors.indigo[400],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      )
                  ),
                ),
                Positioned(
                    top: 0,
                    bottom: 0,
                    right: 45,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 50),
                      height: 20,
                      width: 300,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10,),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search...",
                              enabledBorder: InputBorder.none,
                              prefixIcon: Icon(Icons.search,size: 20,),
                              suffixIcon: Icon(Icons.filter_list_outlined,color: Colors.amber,size: 30,)
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text("Top Of The Day"),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height/3.5,
              width: 330,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage("images/food.jpg"),fit: BoxFit.fill
                  )
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text("Select Your Choice"),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage("images/burger.jpg"),fit: BoxFit.fill
                              )
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Container(

                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage("images/pasta.jpg"),fit: BoxFit.fill
                              )
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Container(

                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage("images/pizza.jpg"),fit: BoxFit.fill
                              )
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
        ]
        ),
        ]
      ),
    );
  }
}
