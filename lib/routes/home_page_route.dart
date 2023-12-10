import 'package:flutter/material.dart';
import 'package:metabrick/routes/leaderboard_page_route.dart';
import 'package:metabrick/routes/news_page_tab_route.dart';
import 'package:metabrick/routes/userr_profile_page_route.dart';

import 'home_page_tab_route.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _tabs = [
    const HomePageTabRoute(),
    const NewsPageTabRoute(),
    const LeaderboardPageRoute(),
    const UserProfilePageRoute(),
  ];

  int _currentIndex = 0;

  get _bottomItems => [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_rounded),
          label: "HOME",
          tooltip: "HOME",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: "NEWS",
          tooltip: "NEWS",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          activeIcon: Icon(Icons.person_2_rounded),
          label: "LEADERS",
          tooltip: "LEADERS",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          activeIcon: Icon(Icons.person_2_rounded),
          label: "PROFILE",
          tooltip: "PROFILE",
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Meta Brick",
          style: TextStyle(fontSize: 20),
        ),
        elevation: 10,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          items: _bottomItems,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(color: Colors.black),
          selectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
