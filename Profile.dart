import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.green[200],
            child: Center(child: Text("Intertoons",style: TextStyle(fontSize: 30,color: Colors.white),)),
          ),
          ListTile(
            title: Text("About"),
          ),
          Divider(thickness: 3,),
          ListTile(
            title: Text("Company Info"),
          ),
          Divider(thickness: 3,),
          ListTile(
            title: Text("Service"),
          ),
          Divider(thickness: 3,),
          ListTile(
            title: Text("Settings"),
          ),
          Divider(),
        ],
      ),
    );
  }
}
