
import 'package:first_app/Screens/Home_screen.dart';
import 'package:first_app/Screens/profile.dart';
import 'package:first_app/Screens/search_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}): super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late  int _selectedIndex=0;
  static final List<Widget> _widgetOptions =<Widget>[
    const HomeScreen(), //_widgetOptions[0]
    const SearchHere(),
    const MyProfile(),
  ];

  void _onItemTapped(int index){
   setState(() {
     _selectedIndex=index;
   });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
          child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black ,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ],
        
      ),
    );
  }
}

