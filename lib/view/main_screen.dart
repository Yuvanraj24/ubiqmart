import 'package:flutter/material.dart';
import 'package:ubiqmart_new/view/Bottom_Navigation_Screens/home.dart';
import 'package:ubiqmart_new/view/Bottom_Navigation_Screens/search.dart';

import 'Bottom_Navigation_Screens/cart.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 2;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Cart(),
    Text(
      'Index 3: Settings',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(

          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green
                ),
                  child:Text("Ubiqmart"),
              )
            ],
          )
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Home"),
        ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        bottomNavigationBar:  BottomNavigationBar(
          currentIndex:_selectedIndex,
          onTap: _onItemTapped,
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedIconTheme: IconThemeData(color: Colors.green),
          items: const[
                  BottomNavigationBarItem(

                      icon: Icon(Icons.home),label: "Home"
                  ),
          BottomNavigationBarItem(
                      icon: Icon(Icons.search),label: "Search"
                  ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),label: "Cart"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),label: "Notification"
          ),
        ],),
      ),
    );
  }
}
