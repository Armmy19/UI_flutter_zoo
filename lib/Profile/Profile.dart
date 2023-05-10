import 'package:flutter/material.dart';
import 'package:zoo/menu/NavDrawer.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("ข้อมูลส่วนตัว"),
        ),
        drawer: NavDrawer(),
        body: Center(child: Text("This is profile page")));
  }
}
