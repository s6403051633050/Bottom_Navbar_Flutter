import 'package:bottom_navbar/constant/constant.dart';
import 'package:bottom_navbar/screens/picture_screen.dart';
import 'package:bottom_navbar/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;

  //List->Datatype,Widgetเรียกใช้ได้เลย,bodyชื่อตัวแปร
  List<Widget> body = [
    const Icon(Icons.home),
    //const Icon(Icons.add_a_photo_outlined), => แค่รูปiconเฉยๆแก้เป็น oop และเรียกมา
    PictureScreen(),
    //const Icon(Icons.person),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),//bodyนี้เป็นproperties
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor.withOpacity(0.5),
        fixedColor: textColorPrimary,//เมื่อเราclick
        currentIndex: _currentIndex,
        onTap:(int newIndex) {
          setState(() {
            _currentIndex = newIndex; 
          });          
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined), label: 'Picture'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
