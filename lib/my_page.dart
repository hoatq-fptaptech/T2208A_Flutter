import 'package:flutter/material.dart';
import 'package:t2208a_flutter/screens/cart_screen.dart';
import 'package:t2208a_flutter/screens/home_screen.dart';
import 'package:t2208a_flutter/screens/profile_screen.dart';
import 'package:t2208a_flutter/screens/search_screen.dart';

class MyPage extends StatefulWidget{
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState(); // new _MyPageState()
}

class _MyPageState extends State<MyPage>{
  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  int _selectedIndex = 0;

  _changeTab(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("T2208A Flutter Demo",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange, // Color.fromRGBO()
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile"),
        ],
        onTap: (index)=> _changeTab(index),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black45,
      ),
    );
  }
}