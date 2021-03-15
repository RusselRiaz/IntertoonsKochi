import 'dart:convert';
import 'package:search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http;

import 'ProductDetails.dart';
import 'ProductPageModel.dart';

class HomeProduct extends StatefulWidget {
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {

  Future<ProductPage> productdata() async {
    String url ="http://fda.intertoons.com/api/V1/products";

    Map data ={
      "currentpage":1,
    "pagesize":100,
    "sortorder": {
    "field":"menu_name",
    "direction":"desc"
    },
    "searchstring":"",
    "filter":{
    "category":""
    }
    };

    var dataenc = json.encode(data);

    var response = await http.post(url,headers: {
      "Authorization" : "Bearer akhil@intertoons.com"
    },body: dataenc);
    if(response.statusCode == 200){
      return ProductPage.fromJson(jsonDecode(response.body));
      print("response found");
    }else{
      print("no connection");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text("Search",style: TextStyle(fontSize: 15),),
        toolbarHeight: 100,
        backgroundColor: Colors.indigo[400],
        elevation: 0.0,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
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
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.filter_list_outlined,color: Colors.amber,size: 30,),
                                )
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
          FutureBuilder(
            future: productdata(),
            builder: (context,snapshot){
              if(snapshot.hasData){
                List<Product> arr = snapshot.data.data.products;
                return GridView.builder(
                  physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 2,
                        childAspectRatio: .7
                    ),
                    itemCount: arr.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                        child: Card(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              arr[index].image!=null?Image.network(arr[index].image.toString(),height: 100,):
                                  Image.asset("images/burger.jpg"),
                              SizedBox(height: 6,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(arr[index].name.toString(),style: TextStyle(fontSize: 15)),
                              ),
                              SizedBox(height: 2,),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("\$ "+arr[index].price.toString(),style: TextStyle(fontWeight: FontWeight.bold,
                                   color: Colors.blue[900],fontSize: 17),),
                                   IconButton(icon: Icon(Icons.navigate_next,color: Colors.amber,size: 35,),
                                       onPressed: (){
                                     Get.to(ProductDetails(image: arr[index].image,
                                       name: arr[index].name.toString(),
                                       price: arr[index].price.toString(),
                                       sku: arr[index].sku.toString(),
                                       id: arr[index].id,
                                       description: arr[index].description.toString(),
                                     ));
                                       })
                                 ],
                               ),
                             )
                            ],
                          ),
                        ),
                      );
                    });
              }else{
                return Container(margin: EdgeInsets.only(top: 150,bottom: 100),
                  child: Center(child: CircularProgressIndicator(backgroundColor: Colors.orange,)),
                );
              }
            }),
    ]
    ),
    );
  }
}
