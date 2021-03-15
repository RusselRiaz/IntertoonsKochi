import 'package:flutter/material.dart';

class OrderSum extends StatefulWidget {
  @override
  _OrderSumState createState() => _OrderSumState();
}

class _OrderSumState extends State<OrderSum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Your order Successful",style: TextStyle(fontSize: 18,color: Colors.blueGrey),)),
          SizedBox(height: 7,),
          Image.asset('images/success.png',height: 100,width: 100,),
        ],
      ),
    );
  }
}