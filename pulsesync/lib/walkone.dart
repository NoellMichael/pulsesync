import 'package:flutter/material.dart';
import 'package:pulsesync/utils.dart';
import 'package:pulsesync/walktwo.dart';

class WalkOnePage extends StatelessWidget {
  const WalkOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(20 * fem, 40 * fem, 20 * fem, 20 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(30 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20 * fem),
                width: 250 * fem,
                height: 250 * fem,
                child: Image.asset(
                  'assets/app-design-/images/auto-group-u6zt.png',
                  width: 250 * fem,
                  height: 250 * fem,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20 * fem),
                child: Text(
                  'Seamless Vitals Monitoring',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Manrope',
                    fontSize: 24 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.365 * ffem,
                    color: const Color(0xff111111),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40 * fem),
                constraints: BoxConstraints(
                  maxWidth: 300 * fem,
                ),
                child: Text(
                  'Skip the queues and easily connect with top doctors at your fingertips.',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Poppins',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem,
                    color: const Color(0xffadb3bc),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Code to handle skip button
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Skip',
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem,
                        color: const Color(0xffadb3bc),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to WalkTwoPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WalkTwoPage()),
                      );
                    },
                    child: SizedBox(
                      width: 40 * fem,
                      height: 4 * fem,
                      child: Image.asset(
                        'assets/app-design-/images/slider-indicator-pbP.png',
                        width: 40 * fem,
                        height: 4 * fem,
                      ),
                    ),
                  ),
                  Text(
                    'Next',
                    textAlign: TextAlign.right,
                    style: safeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem,
                      color: const Color(0xff6283bb),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
