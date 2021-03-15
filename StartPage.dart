import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body.dart';


class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        elevation: 0.0,
      ),
      body: Body(),
    );
  }
}
