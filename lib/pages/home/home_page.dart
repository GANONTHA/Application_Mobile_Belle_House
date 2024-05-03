import 'package:belle_house_mobile_app/pages/home/main_property_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    MainPropertyPage(),
    Container(
      color: Colors.blue,
      child: Center(
        child: Text('page 1'),
      ),
    ),
    Container(
      color: Colors.cyan,
      child: Center(
        child: Text('page 2'),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: Container(
        color: Colors.red,
        height: 100,
      ),
    );
  }
}
