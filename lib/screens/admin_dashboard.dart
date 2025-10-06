import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(title: Text("Admin Dashboard"), backgroundColor: Colors.red),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            DashboardCard(icon: Icons.person, text: "Manage Users", color: Colors.red),
            DashboardCard(icon: Icons.bar_chart, text: "View Reports", color: Colors.orange),
            DashboardCard(icon: Icons.assignment, text: "Assign Tasks", color: Colors.purple),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  DashboardCard({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(backgroundColor: color, child: Icon(icon, color: Colors.white)),
        title: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      ),
    );
  }
}
