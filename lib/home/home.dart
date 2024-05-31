import 'package:b_extras/drawer/nav_drawer.dart';
import 'package:b_extras/profile/client_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile/profile_page.dart';
import '../schedule/schedule.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ProfilePage()),
                    ));
              },
              child: const Center(
                child: Text("Open Client Profile"),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const WasteManagmentProfilePage()),
                    ));
              },
              child: const Center(
                child: Text("Open WM Profile"),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const SchedulePage()),
                    ));
              },
              child: const Center(
                child: Text("Open Schedule"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
