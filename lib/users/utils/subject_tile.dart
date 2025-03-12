import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../screens/attendance_report.dart';



class SubjectTile extends StatelessWidget {
  final String courseName;
  const SubjectTile({super.key, required this.courseName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(courseName, style: GoogleFonts.poppins(),),
      leading: const Icon(LineIcons.book),
      trailing: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const AttendanceReport()),
          );
        },
          child: Text('VIEW', style: GoogleFonts.poppins(),)),
    );
  }
}
