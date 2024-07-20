import 'package:chopy_app/categories.dart';
import 'package:chopy_app/homepage.dart';
import 'package:chopy_app/profile.dart';
import 'package:chopy_app/wishlist.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      Homepage(onCategoryTap: (index) {
        _onPageChanged(index);
      }),
      Categories(onBackTap: (index) {
        _onPageChanged(index);
      }),
      Wishlist(onBackTap: (index) {
        _onPageChanged(index);
      }),
      Profile(onBackTap: (index) {
        _onPageChanged(index);
      }),
    ];
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 113, 201, 206),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            label: "Wishlist",
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: _onPageChanged,
      ),
    );
  }
}
