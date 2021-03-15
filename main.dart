import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'HomePage.dart';
import 'HomeProduct.dart';


import 'StartPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartPage()

    );
  }
}




