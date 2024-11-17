import 'package:flutter/material.dart';

class StudentProfileScreenNew extends StatefulWidget {
  final String name;
  final String section;
  final String rollNumber;
  final String phoneNumber;
  final String image;
  const StudentProfileScreenNew({super.key, required this.name, required this.section, required this.rollNumber, required this.phoneNumber, required this.image});

  @override
  State<StudentProfileScreenNew> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreenNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Student Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 100,
        ),
        child: Center(
          child: Card(
            color: Colors.white,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage('image',),
                  ),
                  SizedBox(height: 16),
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Section: ${widget.section}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Roll Number: ${widget.rollNumber}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Phone: ${widget.phoneNumber}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Add action for button here
                  //   },
                  //   child: Text('Contact'),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
