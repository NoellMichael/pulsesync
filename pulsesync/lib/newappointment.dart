import 'package:flutter/material.dart';
import 'package:pulsesync/utils.dart';

class NewAppointments extends StatelessWidget {
  const NewAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 429;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // myappointmentcompleted4xD (1:6105)
        padding: EdgeInsets.fromLTRB(0 * fem, 46.5 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // navbarZty (208:3127)
              margin:
                  EdgeInsets.fromLTRB(39 * fem, 0 * fem, 22 * fem, 771.5 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // myappointmentsHKB (208:3129)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 1 * fem, 122 * fem, 0 * fem),
                    child: Text(
                      'My Appointments',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff242424),
                      ),
                    ),
                  ),
                  SizedBox(
                    // backyho (208:3130)
                    width: 40 * fem,
                    height: 40 * fem,
                    child: Image.asset(
                      'assets/app-design-/images/back-Heu.png',
                      width: 40 * fem,
                      height: 40 * fem,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // tabmenusearchuLZ (208:3141)
              width: 430 * fem,
              height: 74 * fem,
              child: Image.asset(
                'assets/app-design-/images/tab-menu-search-24D.png',
                width: 430 * fem,
                height: 74 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
