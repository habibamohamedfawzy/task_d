import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Interface/area_stack.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Vistimat',
                  style: TextStyle(
                    color: Color(0xff6F00FF),
                    fontSize: 40,
                    fontFamily: 'EduAUVICWANTHand',
                  ),
                ),
                TextSpan(
                  text: 'e',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff6F00FF),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 80.0,
        ),
        body: Container(
          color: Color(0xffF0F0F0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      'Choose your area',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AreaStack('imgs/cart.png', 'Buying', Colors.deepPurpleAccent),
                        AreaStack('imgs/shop.png', 'Selling', Colors.white),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AreaStack('imgs/briefcase.png', 'Trades', Colors.white),
                        AreaStack('imgs/play.png', 'Videos', Colors.white),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AreaStack('imgs/discount.png', 'Deals', Colors.white),
                        AreaStack('imgs/book.png', 'Case study', Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(

              icon: Icon(Icons.home, color: Colors.deepPurpleAccent),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate, color: Colors.grey),
              label: 'calculator',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.grey),
              label: 'message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.grey),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey),
              label: 'user'
                  ,
            ),
          ],
        ),
      ),
    );
  }
}
