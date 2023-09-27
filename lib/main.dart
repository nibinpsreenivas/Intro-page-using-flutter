import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'second_screen.dart';
import 'third_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
    ));
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            width: 2.5,
            height: 2.5,
            decoration: BoxDecoration(
              color: Color.fromARGB(155, 216, 180, 248),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {},
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
          elevation: 0.0,
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Image.asset(
                    'lib/assets/pic1.jpg',
                    width: 400.0,
                    height: 400.0,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Browse the menu',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'and order directly from',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'the application',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 70.0,
                    height: 70.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 111, 97, 192),
                        onPrimary: Colors.white,
                        shape: CircleBorder(),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios, // right-facing arrow icon
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
