import 'package:flutter/material.dart';
import 'package:kocapeynir_project/pages/login.dart';

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: TextField(
              decoration: InputDecoration(
                  hintText: 'Arama yap',
                  hintStyle: TextStyle(color: Colors.white)),
              cursorColor: Colors.white,
            ),
            trailing: Icon(Icons.search),
            onTap: () {},
          ),
          ListTile(
              // contentPadding: EdgeInsets.all(0),
              leading: Image.asset(
                'assets/menu_items/1.png',
                height: 90,
                width: 90,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {}),
          ListTile(
              leading: Image.asset(
                'assets/menu_items/2.png',
                height: 90,
                width: 90,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {}),
          ListTile(
              leading: Image.asset(
                'assets/menu_items/3.png',
                height: 90,
                width: 90,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {}),
          ListTile(
              leading: Image.asset(
                'assets/menu_items/4.png',
                height: 90,
                width: 90,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {}),
          ListTile(
              leading: Image.asset(
                'assets/menu_items/5.png',
                height: 90,
                width: 90,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {}),
          ListTile(
              leading: Image.asset(
                'assets/menu_items/6.png',
                height: 90,
                width: 90,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
              ),
              onTap: () {}),
          ListTile(
            leading: Icon(Icons.heart_broken),
            title: Text(
              'Favori Listesi',
              style: TextStyle(color: Colors.white),
            ),
            // Add your child widget here
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Login()), // Replace LoginPage() with your actual login page widget
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text(
              'Login/Register',
              style: TextStyle(color: Colors.white),
            ),
            // Add your child widget here
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Login()), // Replace LoginPage() with your actual login page widget
              );
            },
          ),
        ],
      ),
    );
  }
}
