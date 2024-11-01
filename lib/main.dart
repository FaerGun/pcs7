import 'package:flutter/material.dart';
import 'package:pks_pr7/pages/catalog.dart';
import 'package:pks_pr7/pages/cart.dart';
import 'package:pks_pr7/pages/profile.dart';
import 'package:pks_pr7/widgets/navigetion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Style',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const _MainScreen(),
    );
  }
}

class _MainScreen extends StatefulWidget {
  const _MainScreen();

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<_MainScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreen(_currentIndex),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return const CatalogPage();
      case 1:
        return const CartPage();
      case 2:
        return const ProfilePage();
      default:
        return const CatalogPage();
    }
  }
}
