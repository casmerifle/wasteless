import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:LessApp/mainStatsPage.dart';
import 'package:LessApp/debug.dart';
import 'package:LessApp/communityStats.dart';
import 'package:LessApp/fullPersonalStats.dart';
import 'package:LessApp/summary.dart';

class HomePage extends StatefulWidget{


  @override
  HomePageState createState() => new HomePageState();

}

class HomePageState extends State<HomePage> {

  int _selectedIndex = 1;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    new FullPersonalStatsPage(),
    new MainStatsPage(),
    new CommunityStatsPage(),
    new DebugPage(),
    new summaryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('Stats'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            title: Text('Leaderboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            title: Text('!!FOR DEBUG!!'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Summary'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[200],
        unselectedItemColor: Colors.grey[500],
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}





