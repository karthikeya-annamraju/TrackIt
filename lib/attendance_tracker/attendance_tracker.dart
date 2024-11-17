// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:experiments/attendance_tracker/course_tile.dart';
import 'package:experiments/attendance_tracker/login_page.dart';
import 'package:experiments/attendance_tracker/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class AttendanceTracker extends StatefulWidget {
  const AttendanceTracker({super.key});

  @override
  State<AttendanceTracker> createState() => _AttendanceTrackerState();
}

class _AttendanceTrackerState extends State<AttendanceTracker> {

  List courses = [
    ["AI", "22", "25"],
    ["CN", "20", "25"],
    ["CN Lab", "24", "24"],
    ["DAA", "22", "24"],
    ["DM Lab", "18", "21"],
    ["DW&DM", "15", "20"],
    ["EMPSKL", "20", "22"],
    ["MST", "20", "22"],
    ["MST Lab", "21", "24"],
    ["Training", "97", "136"],
  ];

  // List details = [
  //   ["D Suresh Reddy", "22A91A05C2", "9954312124"],
  // ];

  Future<void> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // AppBar starts
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Icon(
              Icons.logout_rounded,
              color: Colors.white,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfileScreenNew(
                  name: "A V S Sai Karthikeya",
                  rollNumber: '22A91A05A1',
                  phoneNumber: '7093525079',
                  image: 'assets/images/22a91a05a1.jpg',
                  section: 'III CSE-D',
                )));
              },
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/22a91a05a1.jpg'),
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
        body: LiquidPullToRefresh(
          color: Colors.white30,
          animSpeedFactor: 2,
          onRefresh: _handleRefresh,
          backgroundColor: Colors.blue.shade900,
          showChildOpacityTransition: false,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                  child: CourseTile(courseName: 'OVERALL',
                  sessionsAttended: '293',
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
          ),
        ));
  }
}


