import 'package:flutter/material.dart';
import 'package:pulsesync/home.dart';
import 'package:pulsesync/utils.dart';

class WalkThreePage extends StatelessWidget {
  const WalkThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          height: 812 * fem,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(30 * fem),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 67 * fem,
                top: 508 * fem,
                child: SizedBox(
                  width: 241 * fem,
                  height: 121 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          child: Text(
                            'Critical Alerts',
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
                            maxWidth: 241 * fem,
                          ),
                          child: Text(
                            'Need a pharmacy? Our platform locates the nearest ones for you. Prioritize your comfort.',
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
              ),
              Positioned(
                left: 35 * fem,
                top: 109.8759765625 * fem,
                child: Align(
                  child: SizedBox(
                    width: 307 * fem,
                    height: 346.12 * fem,
                    child: Image.asset(
                      'assets/app-design-/images/deliveryappsvg.png',
                      width: 307 * fem,
                      height: 346.12 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 52 * fem,
                top: 723 * fem,
                child: SizedBox(
                  width: 168 * fem,
                  height: 24 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 95 * fem, 0 * fem),
                        child: TextButton(
                          onPressed: () {
                            // Navigate to HomePage
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
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
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffadb3bc),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40 * fem,
                        height: 4 * fem,
                        child: Image.asset(
                          'assets/app-design-/images/slider-indicator-WyK.png',
                          width: 40 * fem,
                          height: 4 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 305 * fem,
                top: 723 * fem,
                child: Align(
                  child: SizedBox(
                    width: 37 * fem,
                    height: 37 * fem,
                    child: TextButton(
                      onPressed: () {
                        // Navigate to HomePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/app-design-/images/arrow-right.png',
                        width: 37 * fem,
                        height: 37 * fem,
                      ),
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
