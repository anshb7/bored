// ignore_for_file: prefer_const_constructors

import 'package:bored/homepage.dart';
import 'package:bored/main.dart';
import 'package:bored/songs_page.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Movies',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Uber",
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text(
              'Songs',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Uber",
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SongsPage()));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'TV Series',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Uber",
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text(
              'Anime',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Uber",
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text(
              'Books',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Uber",
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
