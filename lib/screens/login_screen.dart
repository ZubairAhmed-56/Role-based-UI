import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'instructor_dashboard.dart';
import 'student_dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _selectedRole = "student";
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    if (_selectedRole == "admin") {
      Navigator.push(context, MaterialPageRoute(builder: (_) => AdminDashboard()));
    } else if (_selectedRole == "instructor") {
      Navigator.push(context, MaterialPageRoute(builder: (_) => InstructorDashboard()));
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (_) => StudentDashboard()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile.png"), 
          ),
              SizedBox(height: 20),

              Text("Welcome Back",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 4, 35, 60))),
              SizedBox(height: 30),

              // Email field
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email / ID",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 15),

              // Password field
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),

              // Role dropdown
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: _selectedRole,
                  underline: SizedBox(),
                  items: [
                    DropdownMenuItem(value: "admin", child: Text("Admin")),
                    DropdownMenuItem(value: "instructor", child: Text("Instructor")),
                    DropdownMenuItem(value: "student", child: Text("Student")),
                  ],
                  onChanged: (value) => setState(() => _selectedRole = value!),
                ),
              ),

             SizedBox(height: 25),
ElevatedButton.icon(
  style: ElevatedButton.styleFrom(
    minimumSize: Size(200, 50), 
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    backgroundColor: Colors.blue,
  ),
  icon: Icon(Icons.login),
  label: Text("Login", style: TextStyle(fontSize: 18)),
  onPressed: () => _login(context),
),

              
            ],
          ),
        ),
      ),
    );
  }
}
