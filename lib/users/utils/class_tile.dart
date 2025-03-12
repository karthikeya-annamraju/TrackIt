import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassTile extends StatelessWidget {
  final String classTime;
  final String courseName;
  final String location;
  final String duration;
  final String studentCount;
  const ClassTile({super.key, required this.classTime, required this.courseName, required this.location, required this.duration, required this.studentCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: Colors.yellow.shade100),
          color: const Color(0xffF0F8FF)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        // trailing: TextButton(onPressed: () {}, child: Text('Request Leave', style: TextStyle(fontSize: 14),), ),
        title: Text(
          classTime,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(courseName,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.pin_drop_outlined ,size: 15,),
                    Text(
                      ' ${location}',
                      style: GoogleFonts.poppins(
                          fontSize: 11
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.timelapse_outlined ,size: 15,),
                    Text(' ${duration}', style: GoogleFonts.poppins(
                      fontSize: 11
                    )),
                    SizedBox(
                      width: 12,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.people_alt_outlined, size: 15,),
                    Text(' ${studentCount}', style: GoogleFonts.poppins(
                        fontSize: 11
                    )),
                    SizedBox(
                      width: 6,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
