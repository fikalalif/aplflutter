import 'package:flutter/material.dart';
import 'package:untitled5/navigation/page_dua.dart';
import 'package:untitled5/navigation/page_empat.dart';
import 'package:untitled5/navigation/page_satu.dart';
import 'package:untitled5/navigation/page_tiga.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages =[
    PageSatu(),
    PageDua(),
    PageTiga(),
    PageEmpat()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.notification_important_rounded),label: "Notifikasi"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_support),label: "Costume Service"),
          BottomNavigationBarItem(icon: Icon(Icons.reorder),label: "Page Tiga"),
        ],
      ),
    );
  }
}
