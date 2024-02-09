import 'package:flutter/material.dart';
import 'package:pulsesync/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double screenWidth = MediaQuery.of(context).size.width;
    double fem = screenWidth / baseWidth;
    double ffem = fem * 0.97;

    return SingleChildScrollView(
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
    );
  }
}
