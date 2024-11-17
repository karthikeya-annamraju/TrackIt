// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:experiments/attendance_tracker/course_tile.dart';
import 'package:experiments/attendance_tracker/profile_page.dart';
import 'package:flutter/material.dart';

class AttendanceTrackerH5 extends StatefulWidget {
  const AttendanceTrackerH5({super.key});

  @override
  State<AttendanceTrackerH5> createState() => _AttendanceTrackerState();
}

class _AttendanceTrackerState extends State<AttendanceTrackerH5> {

  List courses = [
    ["AI", "20", "25"],
    ["CN", "20", "25"],
    ["CN Lab", "21", "24"],
    ["DAA", "24", "24"],
    ["DM Lab", "18", "21"],
    ["DW&DM", "13", "20"],
    ["EMPSKL", "10", "22"],
    ["MST", "14", "22"],
    ["MST Lab", "21", "24"],
    ["Training", "80", "136"],
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
                  name: "G Divakar Reddy",
                  rollNumber: '22A91A05H5',
                  phoneNumber: '9054431252',
                  // image: 'assets/images/22a91a05h5.jpg',
                  image: 'https://info.aec.edu.in/AEC/StudentPhotos/22a91a05a1.jpg',
                  section: 'III CSE-D',
                )));
              },
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/22a91a05h5.jpg'),
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
                  sessionsAttended: '280',
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
