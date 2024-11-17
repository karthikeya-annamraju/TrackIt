import 'package:experiments/attendance_tracker/users/22a91a05c2.dart';
import 'package:experiments/attendance_tracker/users/22a91a05h5.dart';
import 'package:experiments/attendance_tracker/users/22a91a05j0.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'attendance_tracker.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _rollController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    _rollController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _navigateToScreen(BuildContext context, String input) {
    if (input.isEmpty) return;

    if (_passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('please enter your password')),
      );
    }
    else if (input.toLowerCase() == '22a91a05a1') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AttendanceTracker()),
      );
    } else if (input.toLowerCase() == '22a91a05c2') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AttendanceTrackerC2()),
      );
    } else if (input.toLowerCase() == '22a91a05h5') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AttendanceTrackerH5()),
      );
    } else if (input.toLowerCase() == '22a91a05j0') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AttendanceTrackerJ0()),
      );
    }
    else {
      // Show an error message or navigate to a default screen
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No screen available for "$input".')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        // image: AssetImage('/assets/images/adityauniversity_logo.jpeg'),
                        image: NetworkImage(
                            'https://media.licdn.com/dms/image/v2/D560BAQHspuUEvXbthA/company-logo_200_200/company-logo_200_200/0/1714125482550/adityauniversity_logo?e=2147483647&v=beta&t=CJxiJGK_4JxgU-5KGi4dnqVj096ohluLtOtx1FKcuJI'),
                      )),
                ),

                // Hello Again
                Text(
                  "Hello Again!",
                  style: GoogleFonts.bebasNeue(fontSize: 50),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Welcome back to TrackIt!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                // rollno/ textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: _rollController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: "Roll number"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // passwd/ text-field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          // suffixIcon: (_viewPassword) ? Icon(Icons.visibility_outlined)
                          // : Icon(Icons.visibility_off_outlined),
                          border: InputBorder.none,
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AttendanceTracker())
                      // );
                      _navigateToScreen(context, _rollController.text);
                    },
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          // color: Colors.deepPurple,
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

