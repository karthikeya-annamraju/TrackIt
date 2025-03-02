import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("NO NEW NOTIFICATIONS", style: GoogleFonts.poppins(),),);
  }
}
