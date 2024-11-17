// import 'package:flutter/material.dart';
//
// import '../main.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class UserVerify extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dynamic Screen Navigation',
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   final TextEditingController _controller = TextEditingController();
//
//   void _navigateToScreen(BuildContext context, String input) {
//     if (input.isEmpty) return;
//
//     if (input.toLowerCase() == 'apple') {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => AppleScreen()),
//       );
//     } else if (input.toLowerCase() == 'banana') {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => BananaScreen()),
//       );
//     } else if (input.toLowerCase() == 'cherry') {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => CherryScreen()),
//       );
//     } else {
//       // Show an error message or navigate to a default screen
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('No screen available for "$input".')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Dynamic Screen Navigation')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 labelText: 'Enter a fruit (apple, banana, cherry)',
//               ),
//               onSubmitted: (value) {
//                 _navigateToScreen(context, value);
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _navigateToScreen(context, _controller.text);
//               },
//               child: Text('Go'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class AppleScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Apple')),
//       body: Center(
//         child: Text(
//           'Welcome to the Apple screen!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
//
// class BananaScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Banana')),
//       body: Center(
//         child: Text(
//           'Welcome to the Banana screen!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
//
// class CherryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Cherry')),
//       body: Center(
//         child: Text(
//           'Welcome to the Cherry screen!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

import 'package:experiments/attendance_tracker/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/adityauniversity_logo.jpeg', height: 150),
            SizedBox(height: 5),
            Text(
              'Welcomes you',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}