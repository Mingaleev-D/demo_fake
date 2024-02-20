import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Text('Home'),
    const Text('Category'),
    const Text('Stores'),
    const Text('Cart'),
    const Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.increase_indent), label: 'Stores'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart_fill), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_alt), label: 'Profile'),
        ],
      ),
    );
  }
}
