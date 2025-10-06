import 'package:flutter/material.dart';
import 'admin_dashboard.dart';

class InstructorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(title: Text("Instructor Dashboard"), backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            DashboardCard(icon: Icons.upload_file, text: "Upload Tasks", color: Colors.blue),
            DashboardCard(icon: Icons.assignment_turned_in, text: "View Submissions", color: Colors.teal),
            DashboardCard(icon: Icons.group, text: "Track Students", color: Colors.indigo),
          ],
        ),
      ),
    );
  }
}
