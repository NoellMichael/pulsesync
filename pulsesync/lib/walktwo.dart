import 'package:flutter/material.dart';
import 'package:pulsesync/utils.dart';
import 'package:pulsesync/walkthree.dart';

class WalkTwoPage extends StatelessWidget {
  const WalkTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(38 * fem, 107 * fem, 29 * fem, 67 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(30 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 52 * fem),
                width: 307 * fem,
                height: 349 * fem,
                child: Image.asset(
                  'assets/app-design-/images/auto-group-jdbk.png',
                  width: 307 * fem,
                  height: 349 * fem,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    31.5 * fem, 0 * fem, 40.5 * fem, 92 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 1 * fem, 22 * fem),
                        child: Text(
                          'Medications ',
                          textAlign: TextAlign.center,
                          style: safeGoogleFont(
                            'Manrope',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.365 * ffem / fem,
                            color: const Color(0xff111111),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 236 * fem,
                        ),
                        child: Text(
                          'Say goodbye to pharmacy lines. Enjoy the convenience of hassle-free medication.',
                          textAlign: TextAlign.center,
                          style: safeGoogleFont(
                            'Nunito Sans',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3625 * ffem / fem,
                            letterSpacing: 0.2687999916 * fem,
                            color: const Color(0xffadb3bc),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {
                    // Navigate to WalkThreePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WalkThreePage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'Skip',
                            style: safeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffadb3bc),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 95 * fem,
                        ),
                        SizedBox(
                          width: 40 * fem,
                          height: 4 * fem,
                          child: Image.asset(
                            'assets/app-design-/images/slider-indicator.png',
                            width: 40 * fem,
                            height: 4 * fem,
                          ),
                        ),
                        SizedBox(
                          width: 95 * fem,
                        ),
                        Text(
                          'Next',
                          textAlign: TextAlign.right,
                          style: safeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff6283bb),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
