import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../palette.dart';

class AttendanceReport extends StatelessWidget {
  const AttendanceReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('System Design', style: GoogleFonts.bebasNeue(),),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 9),
              child: IconButton(onPressed: (){}, icon:const Icon(Icons.filter_list_rounded)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text('Monday, 12 November 2024', style: GoogleFonts.farro(),),
                    subtitle: Text("Session No : 1", style: GoogleFonts.farro(fontSize: 13, color: Colors.grey)),
                    trailing: Text('Present', style: GoogleFonts.bebasNeue(color: presentColor, fontWeight: FontWeight.bold, fontSize: 15),),
                    // trailing: Text('Absent', style: GoogleFonts.bebasNeue(color: absentColor, fontWeight: FontWeight.bold, fontSize: 15),),
                  ),
                  const Divider(color: Colors.grey, thickness: 0.2,),

                ],
              );
            }),
      ),
    );
  }
}
