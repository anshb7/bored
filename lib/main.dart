// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names, non_constant_identifier_names

import 'dart:async';

import 'package:bored/actionlist.dart';
import 'package:bored/app_drawer.dart';
import 'package:bored/comedylist.dart';
import 'package:bored/homepage.dart';
import 'package:bored/movies_list.dart';
import 'package:bored/music_screen.dart';
import 'package:bored/poplist.dart';
import 'package:bored/provider/action.dart';
import 'package:bored/provider/comedy.dart';
import 'package:bored/provider/indian.dart';
import 'package:bored/provider/movies_provider.dart';
import 'package:bored/provider/pop.dart';
import 'package:bored/provider/rock.dart';
import 'package:bored/provider/song_provider.dart';
import 'package:bored/provider/thriller.dart';
import 'package:bored/settings_ui.dart';
import 'package:bored/thrillerlist.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import './movies_list.dart';
import './provider/movies.dart';

Future<void> main() async {
  runApp(Homepage());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Movies()),
        ChangeNotifierProvider.value(value: ActionM()),
        ChangeNotifierProvider.value(value: ThrillerM()),
        ChangeNotifierProvider.value(value: ComedyM()),
        ChangeNotifierProvider.value(value: Songs()),
        ChangeNotifierProvider.value(value: PopSongs()),
        ChangeNotifierProvider.value(value: RockSongs()),
        ChangeNotifierProvider.value(value: IndianSongs())
      ],
      child: MaterialApp(
          home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
                colors: [
                  Color.fromRGBO(0, 0, 0, 10),
                  Color.fromRGBO(67, 67, 67, 10)
                ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 15,
                  child: Image.asset("assets/images/Bored logo.png"),
                  backgroundColor: Colors.transparent,
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: "Watchlist",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shuffle,
                    color: Colors.white,
                  ),
                  label: "Surprise Me!",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                ),
              ]),
          drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.black,
            ),
            child: AppDrawer(),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 39,
                  width: 1000,
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontFamily: 'Uber'),
                    cursorColor: Colors.white,
                    controller: editingController,
                    decoration: InputDecoration(
                        fillColor: Colors.black,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "What's Popular?",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Uber',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 170, child: MoviesList()),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Action",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Uber',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 170, child: ActionMoviesList()),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Thriller",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Uber',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 170, child: Thrillerlist()),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Comedy",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Uber',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 170, child: ComedyMoviesList()),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
