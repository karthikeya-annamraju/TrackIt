import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:track_it/screens/time_table.dart';

import '../utils/class_tile.dart';
import '../utils/subject_tile.dart';

class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18).copyWith(top: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              // color: Color(0xffF0F8FF),
            ),
            child: Theme(
              data: ThemeData()
                  .copyWith(dividerColor: Colors.transparent,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: ExpansionTile(
                iconColor: Colors.black,
                leading: Icon(LineIcons.userCircle, size: 30,),
                title: Text('22A91A05A1', style: GoogleFonts.poppins(),),
                subtitle: Text('Karthikeya Annamraju', style: GoogleFonts.poppins(fontSize: 13)),
                children: [
                  Divider(thickness: 1, color: Colors.black,indent:50, endIndent: 40,),
                  ListTile(
                    leading: Icon(LineIcons.phoneVolume),
                    title: Text('Ph no : 7093525079', style: GoogleFonts.poppins(fontSize: 14),),),
                  // Divider(thickness: 1, color: Colors.black,indent:50, endIndent: 40,),
                  ListTile(
                    leading: Icon(LineIcons.book),
                    title: Text('CGPA : 8.23', style: GoogleFonts.poppins(fontSize: 14)),),
                  // Divider(thickness: 1, color: Colors.black,indent:50, endIndent: 40,),
                  ListTile(
                    leading: Icon(LineIcons.school),
                    title: Text('Course/Semester : CSE VI Sem', style: GoogleFonts.poppins(fontSize: 14)),),
                  Divider(thickness: 1, color: Colors.black, indent:55, endIndent: 30,),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'Today\'s Classes',
              style: GoogleFonts.poppins(fontSize: 19),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ClassTile(
                  classTime: '10:30 am',
                  courseName: 'System Design',
                  location: '1D, BG Tower',
                  duration: '1.5 hours',
                  studentCount: '32',
                ),
                SizedBox(
                  height: 5,
                ),
                ClassTile(
                  classTime: '2:00 pm',
                  courseName: 'Data Structures and Algorithms',
                  location: '3A, RTN Tower',
                  duration: '1 hour',
                  studentCount: '25',
                ),
                SizedBox(
                  height: 5,
                ),
                ClassTile(
                  classTime: '3:00 pm',
                  courseName: 'Business Analytics',
                  location: '12C, RG Tower',
                  duration: '30 min',
                  studentCount: '20',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Column(
                    children: [
                      Divider(thickness: 0.5,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffF0F8FF),
                        ),
                        child: Theme(
                          data: ThemeData()
                              .copyWith(dividerColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                          ),
                          child: ExpansionTile(
                            title: Text(
                              'Check Attendance',
                              style: GoogleFonts.poppins(),
                            ),
                            leading: const Icon(LineIcons.calendar),
                            // trailing: const Icon(Icons.chevron_right),
                            children:  [
                              SubjectTile(courseName: 'System Design'),
                              SubjectTile(
                                  courseName: 'Data Structures and Algorithms'),
                              SubjectTile(courseName: 'Business Analytics'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffF0F8FF),
                        ),
                        child: ListTile(
                          leading: const Icon(LineIcons.laptop),
                          title: Text(
                            'Assignments',
                            style: GoogleFonts.poppins(),
                          ),
                          trailing: const Icon(Icons.chevron_right),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffF0F8FF),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => TimeTable()),
                            );
                          },
                          child: ListTile(
                            leading: const Icon(LineIcons.userClock),
                            title: Text(
                              'View Timetable',
                              style: GoogleFonts.poppins(),
                            ),
                            trailing: const Icon(Icons.chevron_right),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffF0F8FF),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => TimeTable()),
                            );
                          },
                          child: ListTile(
                            leading: const Icon(LineIcons.question),
                            title: Text(
                              'Request a leave',
                              style: GoogleFonts.poppins(),
                            ),
                            trailing: const Icon(Icons.chevron_right),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
