import 'package:flutter/material.dart';
import 'package:flutter_intership/screens/home_screen.dart';
import 'package:flutter_intership/screens/user.dart';
import 'package:flutter_intership/utilities/constants.dart';

class Home extends StatefulWidget {
  static String id = "Home";
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return User();
      case 1:
        return HomeScreen();
      case 2:
        return Text("screen3");

      default:
        return Text("Error");
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Count',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kAppColor,
        onTap: _onItemTapped,
      ),
      body: _getDrawerItemWidget(_selectedIndex),
    );
  }
}
