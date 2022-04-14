import 'package:flutter/material.dart';
import 'package:shopping/screens/cart_screen.dart';
import 'package:shopping/screens/feed_screen.dart';
import 'package:shopping/screens/home_screen.dart';
import 'package:shopping/screens/search_screen.dart';
import 'package:shopping/screens/user_screen.dart';

class BottomNavScreen extends StatefulWidget {
  static const routeName = '/Bottom-nav-screen';
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _pages = const [
    HomeScreen(),
    FeedScreen(),
    SearchScreen(),
    CartScreen(),
    UserScreen()
  ];

  int _currentIndex = 4;

  _onTap(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home', tooltip: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.rss_feed), label: 'Feeds', tooltip: 'Feeds'),
          BottomNavigationBarItem(icon: Icon(null), label: '', tooltip: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Cart',
              tooltip: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Account', tooltip: 'Account'),
        ],
      ),
      body: _pages[_currentIndex],
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        tooltip: 'Search',
        onPressed: () {
          _onTap(2);
        },
      ),
    );
  }
}
