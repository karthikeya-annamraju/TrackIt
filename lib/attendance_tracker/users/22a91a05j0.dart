// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:experiments/attendance_tracker/course_tile.dart';
import 'package:experiments/attendance_tracker/profile_page.dart';
import 'package:flutter/material.dart';

class AttendanceTrackerJ0 extends StatefulWidget {
  const AttendanceTrackerJ0({super.key});

  @override
  State<AttendanceTrackerJ0> createState() => _AttendanceTrackerState();
}

class _AttendanceTrackerState extends State<AttendanceTrackerJ0> {

  List courses = [
    ["AI", "16", "25"],
    ["CN", "19", "25"],
    ["CN Lab", "21", "24"],
    ["DAA", "19", "24"],
    ["DM Lab", "18", "21"],
    ["DW&DM", "16", "20"],
    ["EMPSKL", "16", "22"],
    ["MST", "14", "22"],
    ["MST Lab", "20", "24"],
    ["Training", "100", "136"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // AppBar starts
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          leading: Icon(
            Icons.logout_rounded,
            color: Colors.white,
          ),
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfileScreenNew(
                  name: "M Joshitha",
                  rollNumber: '22A91A05J0',
                  phoneNumber: '9954312124',
                  // image: 'assets/images/22a91a05j0.jpg',
                  section: 'III CSE-D',
                  image: "https://info.aec.edu.in/AEC/StudentPhotos/22a91a05j0.jpg",
                )));
              },
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/22a91a05j0.jpg'),
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),
            SizedBox(width: 15,)
          ],
          title: Text(
            "A T T E N D A N C E",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          centerTitle: true,
        ),
        // AppBar ends
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: CourseTile(courseName: 'OVERALL',
                  sessionsAttended: '287',
                  sessionsHeld: '357',)
            ),
            Text('Course Wise Attendance', style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
            ),
            ),
            SizedBox(height: 7,),
            Expanded(
              flex: 6,
              child: ListView.builder(
                  itemCount: courses.length,
                  itemBuilder: (BuildContext context, index) {
                    return CourseTile(
                      courseName: courses[index][0],
                      sessionsAttended: courses[index][1],
                      sessionsHeld: courses[index][2],
                    );
                  }),
            ),
          ],
        ));
  }
}
