import 'package:flutter/material.dart';
import 'package:tikodc/Accueil.dart';
import 'package:tikodc/Profil.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // bottom nav bar
  int  _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    PageAccueil(),
    Profil(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        iconSize: 28,
        selectedFontSize: 18,
        unselectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        items:  const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil'),
        ],
      ),
    );
  }
}