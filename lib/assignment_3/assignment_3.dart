import 'package:flutter/material.dart';
import 'package:new_flutter_application_1/assignment_3/assignment_3_about.dart';
import 'package:new_flutter_application_1/assignment_3/assignment_3_home.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int selectedIndex = 0;
  List<Widget> screens = [Assignment3Home(), Assignment3About()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.info), label: 'Info'),
        ],
      ),
    );
  }
}
