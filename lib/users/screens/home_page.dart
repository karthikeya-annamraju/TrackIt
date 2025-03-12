import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:track_it/users/screens/settings_screen.dart';

import 'app_home_screen.dart';
import 'notifications_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  List<Widget> tabItems = [
    const AppHomeScreen(),
    const NotificationsScreen(),
    const SettingsScreen(),
    const Center(child: Text("3")),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          backgroundColor: const Color(0xffF0F8FF),
          // backgroundColor: Colors.white,
          title: Text("Welcome Back, AK!", style: GoogleFonts.raleway(fontWeight: FontWeight.bold),)
        ),
      ),
      body: tabItems.elementAt(_selectedIndex),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: false,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(LineIcons.home),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(LineIcons.facebookMessenger),
            title: const Text('Notices'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.settings),
            title: const Text('Settings'),
          ),
          FlashyTabBarItem(
            icon: const Icon(LineIcons.identificationCard),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
