import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:get/route_manager.dart';
import '../CartPage.dart';
import '../HomePage.dart';
import '../HomeProduct.dart';
import '../Profile.dart';
import 'Bottom_bar.dart';


class Bottom_nav_home extends StatefulWidget {

  String image;
  String name;
  String price;
  Bottom_nav_home({Key key,this.image,this.price,this.name});
  @override
  _Bottom_nav_homeState createState() => _Bottom_nav_homeState();
}
enum BottomIcons { Home, Favorite, Search, Account }
class _Bottom_nav_homeState extends State<Bottom_nav_home> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      ///bottom navigation bar
      bottomNavigationBar:Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.Home
              ? HomePage()
              :bottomIcons == BottomIcons.Search
              ? HomeProduct()
              : Container(),
          // bottomIcons == BottomIcons.Favorite
          //     ? CartPage()
          //     : Container(),
          bottomIcons == BottomIcons.Account
              ? ProfilePage()
              : Container(),
          Padding(
            padding: const EdgeInsets.only(top: 6,left: 14,right: 14),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.grey[200],),
                padding: EdgeInsets.only(left: 24, right: 24, bottom: 10,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BottomBar(
                        onPressed: () {
                          setState(() {

                            bottomIcons = BottomIcons.Home;
                          });
                        },
                        bottomIcons:
                        bottomIcons == BottomIcons.Home ? true : false,
                        icons: EvaIcons.home,
                        text: "Home"),
                    BottomBar(
                        onPressed: () {
                          setState(() {
                            bottomIcons = BottomIcons.Search;
                          });
                        },
                        bottomIcons:
                        bottomIcons == BottomIcons.Search ? true : false,
                        icons: EvaIcons.search,
                        text: "Search"),
                    // BottomBar(
                    //     onPressed: () {
                    //       setState(() {
                    //         bottomIcons = BottomIcons.Favorite;
                    //       });
                    //     },
                    //     bottomIcons:
                    //     bottomIcons == BottomIcons.Favorite ? true : false,
                    //     icons: EvaIcons.shoppingBagOutline,
                    //     text: "Cart"),
                    BottomBar(
                        onPressed: () {
                          setState(() {
                            bottomIcons = BottomIcons.Account;
                          });
                        },
                        bottomIcons:
                        bottomIcons == BottomIcons.Account ? true : false,
                        icons: EvaIcons.personOutline,
                        text: "Account"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
