import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:pulsesync/utils.dart';

class Alerts extends StatelessWidget {
  const Alerts({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // loginpagenJZ (206:2823)
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
              // autogroupjmjuGzR (RW61XPcVrBNFMVTJyNJMJu)
              padding: EdgeInsets.fromLTRB(
                  39 * fem, 46.5 * fem, 23 * fem, 46.5 * fem),
              width: double.infinity,
              height: 858 * fem,
              child: SizedBox(
                // navbar1SD (206:2928)
                width: double.infinity,
                height: 40 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // alertsZCq (206:2930)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 257 * fem, 0 * fem),
                      child: Text(
                        'Alerts',
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
                      // backUKo (206:2931)
                      width: 40 * fem,
                      height: 40 * fem,
                      child: Image.asset(
                        'assets/app-design-/images/back-spq.png',
                        width: 40 * fem,
                        height: 40 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              // autogroup1zz9BV7 (RW61Sj5bxUv28NX3Gu1zz9)
              width: 430 * fem,
              height: 74 * fem,
              child: Image.asset(
                'assets/app-design-/images/auto-group-1zz9.png',
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
