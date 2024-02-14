import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key});

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void resetPassword() {
    // Code to handle password reset logic
    String newPassword = newPasswordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (newPassword == confirmPassword) {
      // Perform password reset operation here
      print('Password reset successful');
    } else {
      // Display an error message for password mismatch
      print('Passwords do not match');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 89, 107, 137),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 89, 107, 137),
        title: const Text(
          'Reset Password',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/app-design-/images/secure-login.png',
                width: 230.0, // Adjust the width as needed
                height: 230.0, // Adjust the height as needed
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Enter your new password:',
                style: TextStyle(fontSize: 12.0, color: Colors.white),
              ),
              const SizedBox(height: 12.0),
              TextField(
                controller: newPasswordController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  fillColor: Colors.white70,
                  filled: true,
                  labelText: 'New Password',
                  labelStyle: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.0, // Adjust the horizontal padding as needed
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                obscureText: true,
                maxLines: 1, // Set the maximum number of lines
                maxLength: 10, // Set the maximum length of characters
              ),
              const SizedBox(height: 12.0),
              TextField(
                controller: confirmPasswordController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  fillColor: Colors.white70,
                  filled: true,
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.0, // Adjust the horizontal padding as needed
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                obscureText: true,
                maxLines: 1, // Set the maximum number of lines
                maxLength: 10, // Set the maximum length of characters
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: resetPassword,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(232, 182, 191, 199),
                  primary: Colors.black,
                ),
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
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
