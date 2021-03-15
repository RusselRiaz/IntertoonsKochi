import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'CartPage.dart';

class ProductDetails extends StatefulWidget {

  String name;
  String image;
  String price;
  String description;
  String sku;
  String isVeg;
  int id;
  ProductDetails({Key key,this.name,this.image,this.price,this.description,
    this.isVeg,this.sku,this.id
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  int cart=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        elevation: 0.0,
        actions: [
          IconButton(icon: Icon(Icons.favorite,color: Colors.white,)
              , onPressed: (){
            Get.to(CartPage(image: widget.image,
            name: widget.name,price: widget.price.toString(),),);
              })
        ],
      ),
      body: ListView(
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
                        bottomRight: Radius.circular(35),
                        bottomLeft: Radius.circular(35),
                      )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 20),
                      child: Text(widget.name.toString(),style: TextStyle(
                        color: Colors.white,fontSize: 24
                      ),),
                    ),
                    Positioned(
                        top: 120,
                        bottom: 0,
                        right: 27,
                        child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      width: 300,
                      child: widget.image!=null?Image.network(widget.image.toString(),height: 100,fit: BoxFit.fill,):
                      Image.asset("images/burger.jpg",fit: BoxFit.fill,),
                      // decoration: BoxDecoration(
                      // image: DecorationImage(image: NetworkImage(widget.image),
                      // fit: BoxFit.fill
                      // )
                      // ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.blue[50]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("\$"+widget.price.toString(),
                              style: TextStyle(fontSize: 20),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 35,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: Colors.indigo[400]
                          ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            if(cart > 0){
                                              cart--;

                                            }
                                          });
                                        },
                                        child: Container(
                                          height: 20,
                                          width: 30,
                                          child: Icon(Icons.remove,color: Colors.amber,),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(cart.toString(),style: TextStyle(color: Colors.amber),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            cart++;

                                          });
                                        },
                                        child: Container(
                                          child: Icon(Icons.add,color: Colors.amber,),
                                          height: 20,
                                          width: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" Product ID : ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 6,),
                    Text(" "+widget.id.toString()),
                    SizedBox(height: 10,),
                    Text(" Ingredients :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 40,
                                width: 45,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                color: Colors.blue[50]),
                              )
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Container(
                                height: 40,
                                width: 45,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                    color: Colors.blue[50]),
                              )
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Container(
                                height: 40,
                                width: 45,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                    color: Colors.blue[50]),
                              )
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Container(
                                height: 40,
                                width: 45,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                    color: Colors.blue[50]),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Text("Stock Keeping Unit :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Row(
                    children: [
                      Text(widget.sku.toString())
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Row(
                    children: [
                      Text("Description :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(
                    children: [
                      Text(widget.description),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 150),
        child: FloatingActionButton(
          child: Icon(Icons.add,color: Colors.amber,),
          backgroundColor: Colors.indigo[400],
          onPressed: (){
      Get.to(CartPage(image: widget.image,
      name: widget.name,price: widget.price.toString(),),);
      },
        ),
      ),
    );
  }
}
