import 'package:flutter/material.dart';
import 'package:kocapeynir_project/pages/Store.dart';
import 'package:kocapeynir_project/pages/basket.dart';
import 'package:kocapeynir_project/pages/drawer.dart';
import 'package:kocapeynir_project/pages/enddrawer.dart';
import 'package:kocapeynir_project/pages/liked.dart';
import 'package:kocapeynir_project/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  final List<Widget> _children = [
    const StorePage(),
    const FavouritePage(),
    const BasketPage(),
    const Login()
  ];

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;

    double nonScrollableHeight = screenheight - statusBarHeight;

    return Scaffold(
      drawer: MyDrawer(),
      key: key,
      endDrawer: Container(
        padding: EdgeInsets.all(10),
        height: nonScrollableHeight,
        width: 0.7 * screenwidth,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sepet",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "BenchNine",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: () => (),
                  child: Text(
                    'Kapat',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "BenchNine",
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
                      child: Icon(
                        Icons.add_shopping_cart_outlined,
                        size: 200,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      child: Text('SEPETINIZDE ÜRÜN BULUNMUYOR..',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "BenchNine",
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Mağaza dön",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "BenchNine",
                            fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Background color

                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        textStyle: TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 20,
      ),
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFAB1B28),
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.maps_home_work_outlined),
            label: 'Magaza',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favori Listem',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Icon(Icons.shopping_bag_outlined),
            ),
            label: 'Sepet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Hesabum',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    if (index == 2) {
      Scaffold.of(context).openEndDrawer();
    } else {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
