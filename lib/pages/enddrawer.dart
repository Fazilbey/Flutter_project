import 'package:flutter/material.dart';

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        // Remove padding so the drawer wypełnia całą dostępną przestrzeń.
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
            // Add your child widget here
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
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text(
              'Login/Register',
              style: TextStyle(color: Colors.white),
            ),
            // Add your child widget here
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
