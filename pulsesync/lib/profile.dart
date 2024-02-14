import 'package:flutter/material.dart';
import 'package:pulsesync/login.dart'; // Import your login screen file

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 431;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SETTINGS',
          style: TextStyle(
            fontFamily: 'Be Vietnam Pro',
            fontSize: 14.64 * ffem, // Use ffem here
            fontWeight: FontWeight.w600,
            letterSpacing: 0.21 * ffem, // Use ffem here
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16 * ffem), // Use ffem here
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(24 * ffem), // Use ffem here
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Details
              Container(
                margin: EdgeInsets.only(bottom: 16 * ffem), // Use ffem here
                padding: EdgeInsets.all(16 * ffem), // Use ffem here
                decoration: BoxDecoration(
                  color: const Color(0xff6283bb),
                  borderRadius:
                      BorderRadius.circular(12 * ffem), // Use ffem here
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User name snkjdf',
                      style: TextStyle(
                        fontFamily: 'Be Vietnam Pro',
                        fontSize: 14.64 * ffem, // Use ffem here
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    SizedBox(height: 8 * ffem), // Use ffem here
                    Row(
                      children: [
                        Text(
                          'useremail@somemail.com',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 11.38 * ffem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        SizedBox(width: 8 * ffem), // Use ffem here
                        Text(
                          'Register Number:XXXXXXX',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 11.38 * ffem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Medical History
              buildSettingsItem(
                title: 'Medical History',
                ffem: ffem, // Pass ffem to the function
              ),

              // Frequently Asked Questions
              buildSettingsItem(
                title: 'Frequently Asked Questions',
                ffem: ffem, // Pass ffem to the function
              ),

              // Edit Profile
              buildSettingsItem(
                title: 'Edit Profile',
                ffem: ffem, // Pass ffem to the function
              ),

              // Logout
              buildSettingsItem(
                title: 'Logout',
                textColor: const Color(0xffff0000),
                ffem: ffem, // Pass ffem to the function
                onTap: () {
                  // Add logic to logout and navigate to LoginScreen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginScreen(
                              showRegisterPage: () {},
                            )),
                  );
                },
              ),

              // Need Help
              Container(
                margin: EdgeInsets.only(top: 16 * ffem), // Use ffem here
                padding: EdgeInsets.all(16 * ffem), // Use ffem here
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff0f0f0),
                  borderRadius:
                      BorderRadius.circular(12 * ffem), // Use ffem here
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Need Help?',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 12.2 * ffem, // Use ffem here
                        fontWeight: FontWeight.w900,
                        color: const Color(0xff151921),
                      ),
                    ),
                    buildDivider(ffem: ffem), // Pass ffem to the function
                    Text(
                      'About Us',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 12.2 * ffem, // Use ffem here
                        fontWeight: FontWeight.w900,
                        color: const Color(0xff151921),
                      ),
                    ),
                    buildDivider(ffem: ffem), // Pass ffem to the function
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 12.2 * ffem, // Use ffem here
                        fontWeight: FontWeight.w900,
                        color: const Color(0xff151921),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSettingsItem({
    required String title,
    Color textColor = const Color(0xff151921),
    required double ffem, // Add ffem as a parameter
    VoidCallback? onTap, // Add onTap as a parameter
  }) {
    return Column(
      children: [
        TextButton(
          onPressed: onTap, // Use onTap here
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(
                0, 16 * ffem, 0, 16 * ffem), // Use ffem here
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 11.38 * ffem,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        buildDivider(ffem: ffem), // Pass ffem to the function
      ],
    );
  }

  Widget buildDivider({
    required double ffem, // Add ffem as a parameter
  }) {
    return SizedBox(
      width: double.infinity,
      height: 0.81 * ffem, // Use ffem here
    );
  }
}
