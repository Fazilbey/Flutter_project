import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kocapeynir_project/pages/drawer.dart';
import 'package:kocapeynir_project/pages/footer.dart';
import 'package:kocapeynir_project/pages/header.dart';
import 'package:kocapeynir_project/pages/menu_button.dart';
// import 'package:url_launcher/url_launcher_string.dart';
import 'products.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  Addd addInstance = Addd();
  List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    addInstance.addProducts();
    productList = addInstance.myObjectList;

    // Access the list of products
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
          child: Column(children: [
        Header(),
        Container(
          height: 270,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/wild.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Menu(), // Adjust the context as needed
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Mağaza",
                          style: TextStyle(
                            fontFamily: "BenchNine",
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/background-paper.jpg'))),
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Text(
                      "Ana Sayfa/ Magaza",
                      style: TextStyle(
                          fontFamily: "BenchNine",
                          fontSize: 20,
                          color: Colors.red),
                    ),
                  ),
                  Icon(Icons.compare_arrows)
                ]),
          ),
        ),

        SizedBox(
          height: 800,
          child: ListView.builder(
            itemCount: (productList.length / 2).ceil(),
            itemBuilder: (context, index) {
              int firstIndex = index * 2;
              int secondIndex = firstIndex + 1;

              bool hasFirstProduct = firstIndex < productList.length;
              bool hasSecondProduct = secondIndex < productList.length;
              return Container(
                // width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background-paper.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: [
                      if (hasFirstProduct)
                        Expanded(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(15, 0, 5, 10),
                            // color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  // padding: EdgeInsets.symmetric(horizontal: 5),
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/products/$firstIndex.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // color: Colors.red,
                                  // width: double.infinity,
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Text(
                                        productList[firstIndex].name,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: "BenchNine"),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            productList[firstIndex]
                                                .price
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 26,
                                                fontFamily: "BenchNine",
                                                color: Colors.red[800]),
                                          ),
                                          Icon(
                                            Icons.currency_lira,
                                            size: 18,
                                            color: Colors.red,
                                          ),
                                          Text(
                                            "%1 KDV Dahil",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "BenchNine",
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      SizedBox(width: 10), // Adjust spacing between containers
                      if (hasSecondProduct)
                        Expanded(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(15, 0, 5, 10),
                            // color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  // padding: EdgeInsets.symmetric(horizontal: 5),
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/products/$secondIndex.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // color: Colors.red,
                                  // width: double.infinity,
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Text(
                                        productList[secondIndex].name,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: "BenchNine"),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            productList[secondIndex]
                                                .price
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 26,
                                                fontFamily: "BenchNine",
                                                color: Colors.red[800]),
                                          ),
                                          Icon(Icons.currency_lira,
                                              size: 18, color: Colors.red),
                                          Text(
                                            "%1 KDV Dahil",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "BenchNine",
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        // footer

        Footer()
      ])),
    );
  }
}
