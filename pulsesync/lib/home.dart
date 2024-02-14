import 'package:flutter/material.dart';
import 'package:pulsesync/alerts.dart';
import 'package:pulsesync/newappointment.dart';
import 'package:pulsesync/profile.dart';
import 'package:pulsesync/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double screenWidth = MediaQuery.of(context).size.width;
    double fem = screenWidth / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(30 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20 * fem,
                    vertical: 171 * fem,
                  ),
                  width: double.infinity,
                  height: 858 * fem,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.73 * fem,
                      vertical: 16.49 * fem,
                    ),
                    width: double.infinity,
                    height: 154.55 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffe4e8ee),
                      borderRadius: BorderRadius.circular(24.7282905579 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 4.88 * fem),
                          child: Text(
                            'VITALS MONITORING',
                            style: safeGoogleFont(
                              'Be Vietnam Pro',
                              fontSize: 18.5462188721 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3333332648 * ffem / fem,
                              letterSpacing: 0.12879318 * fem,
                              color: const Color(0xff151921),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 18.11 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 220 * fem,
                          ),
                          child: Text(
                            'Check active appointments and get ready for the meeting.',
                            style: safeGoogleFont(
                              'Lato',
                              fontSize: 14.4248371124 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3571428666 * ffem / fem,
                              color: const Color(0xff151921),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 0.48 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 127 * fem,
                          ),
                          child: Text(
                            'NO APPOINTMENTS IN 3 DAYS.',
                            style: safeGoogleFont(
                              'Be Vietnam Pro',
                              fontSize: 12.3641452789 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3333333333 * ffem / fem,
                              color: const Color(0xff151921),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: 0,
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
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Alerts()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const BookAppointmentPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }
        },
      ),
    );
  }
}
