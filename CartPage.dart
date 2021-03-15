import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'OrderSummary.dart';
import 'ProductDetails.dart';

class CartPage extends StatefulWidget {

  String image;
  String name;
  String price;
  CartPage({Key key,this.image,this.price,this.name,});


  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(icon: Icon(Icons.more_vert,color: Colors.black,), onPressed: null)
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:Text("Cart",style: TextStyle(fontSize: 30),),
            ),
          ),
          Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  child: IconButton(icon: Icon(Icons.close), onPressed: null))
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: widget.image!=null?Image.network(widget.image.toString(),height: 100,fit: BoxFit.fill,):
                      Image.asset("images/burger.jpg",fit: BoxFit.fill,),
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(image: NetworkImage(widget.image),fit: BoxFit.fill)
                      // ),

                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name),
                  SizedBox(height: 10,),
                  Text(widget.price.toString()),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("1")
                        ],
                      ),
                      SizedBox(width: 7,),
                      Column(
                        children: [
                          Icon(Icons.keyboard_arrow_down,color: Colors.grey,)
                        ],
                      )
                    ],
                  )
                ],
              ),
              //SizedBox(width: 40,),

            ],
          ),
          ListTile(
            title: Text("Shipping",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            trailing: Text("\$ 9.95",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            title: Text("Subtotal",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            trailing: Text("\$ "+widget.price,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            title: Text("Total"),
            trailing: Text("\$ 14.95",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(OrderSum());
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color: Colors.blueAccent[700]
                  ),
                  child: Center(child: Text("Checkout",style: TextStyle(color: Colors.white),)),
                ),
              )
            ],
          )
        ],
      ),
      
    );
  }
}
