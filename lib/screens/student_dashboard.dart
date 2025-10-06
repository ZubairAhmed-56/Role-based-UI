import 'package:flutter/material.dart';
import 'admin_dashboard.dart';

class StudentDashboard extends StatefulWidget {
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          DashboardCard(icon: Icons.task, text: "My Tasks", color: Colors.green),
          DashboardCard(icon: Icons.upload, text: "Submit Work", color: Colors.orange),
          DashboardCard(icon: Icons.show_chart, text: "Progress Tracker", color: Colors.blue),
        ],
      ),
    ),
    Center(child: Text("Profile", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(title: Text("Student Dashboard"), backgroundColor: Colors.green),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
