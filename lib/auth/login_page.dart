import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:track_it/auth/singup_page.dart';
import 'package:track_it/palette.dart';


class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const LoginPage());
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showPassword = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> loginUserWithEmailAndPassword() async {
    try {
      final userCredentials = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      print(userCredentials);
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    // bool showPassword = false;

    return Scaffold(
        // backgroundColor: Colors.green,
      backgroundColor: colorOne,
        body: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.25,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: Column(
                      children: [
                        const SizedBox(height: 30,),
                        Text(
                          'Welcome Back',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 30,
                          ),
                        ),

                        Lottie.asset('assets/lottie/login_wave.json', height: 150, width: 400),

                        Text(
                          'Enter your email and password to login',
                          style: GoogleFonts.poppins(
                            fontSize: 14.5,
                          ),
                        ),
                        const SizedBox(height: 10),

                        // Email
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.person_outlined,
                                size: 20,
                              ),
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),

                        // Password
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            controller: passwordController,
                            obscureText: !showPassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                icon: Icon(showPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined, size: 18,),),
                              prefixIcon: const Icon(
                                Icons.lock_outline_rounded,
                                size: 20,
                              ),
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              'Forgot password ?',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () async {
                            await loginUserWithEmailAndPassword();
                          },
                          child: Container(
                            height: 45,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: colorOne,
                            ),
                            child: Center(
                                child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                          ),
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(SignUpPage.route());
                          },
                          child: RichText(
                            text: TextSpan(
                                text: 'Don\'t have an account? ',
                                style: Theme.of(context).textTheme.titleMedium,
                                children: const [
                                  TextSpan(
                                    text: 'Sign Up',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
