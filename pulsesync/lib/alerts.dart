import 'package:flutter/material.dart';
import 'package:pulsesync/utils.dart';

class Alerts extends StatelessWidget {
  const Alerts({Key? key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alerts',
          style: safeGoogleFont(
            'Inter',
            fontSize: 24 * ffem,
            fontWeight: FontWeight.w600,
            height: 1.2125 * ffem / fem,
            color: const Color(0xff242424),
          ),
        ),
        automaticallyImplyLeading: false, // To remove back button
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // Container styling...
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Body content...
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: 1, // Set the appropriate index for the 'Alerts' page
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xff6283bb),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            backgroundColor: Color(0xff6283bb),
            label: "Alerts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_sharp),
            backgroundColor: Color(0xff6283bb),
            label: "Appointment",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Color(0xff6283bb),
            label: "Profile",
          ),
        ],
        onTap: (index) {
          // Handle navigation to other pages
          if (index == 0) {
            // Navigate to the Home page
          } else if (index == 2) {
            // Navigate to the Appointment page
          } else if (index == 3) {
            // Navigate to the Profile page
          }
        },
      ),
    );
  }
}
