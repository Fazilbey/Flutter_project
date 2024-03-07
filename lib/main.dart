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
  int currentIndex = 0;

  final List<Widget> _children = [
    const StorePage(),
    const FavouritePage(),
    const BasketPage(),
    const Login()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      endDrawer: MyEndDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFAB1B28),
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.maps_home_work_outlined),
            label: 'Magaza',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favori Listem',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
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
    // if (index == 2) {
    //   // If "Sepet" tab is clicked, open the EndDrawer
    //   Scaffold.of(context).openEndDrawer();
    // } else {
      // If other tabs are clicked, update the current index
      setState(() {
        currentIndex = index;
      });
    }
  }

