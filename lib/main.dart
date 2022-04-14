import 'package:flutter/material.dart';
import 'package:shopping/screens/bottom_nav_screen.dart';
import 'package:shopping/screens/cart_screen.dart';
import 'package:shopping/screens/feed_screen.dart';
import 'package:shopping/screens/home_screen.dart';
import 'package:shopping/screens/search_screen.dart';
import 'package:shopping/screens/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomNavScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        FeedScreen.routeName: (ctx) => const FeedScreen(),
        SearchScreen.routeName: (ctx) => const SearchScreen(),
        CartScreen.routeName: (ctx) => const CartScreen(),
        BottomNavScreen.routeName: (ctx) => const BottomNavScreen(),
        UserScreen.routeName: (ctx) => const UserScreen(),
      },
    );
  }
}
