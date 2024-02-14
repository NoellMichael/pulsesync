import 'package:flutter/material.dart';
import 'package:pulsesync/alerts.dart';
import 'package:pulsesync/profile.dart';

class BookAppointmentPage extends StatefulWidget {
  const BookAppointmentPage({Key? key}) : super(key: key);

  @override
  _BookAppointmentPageState createState() => _BookAppointmentPageState();
}

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  String dropdownValue = 'A'; // Initialize with the first doctor
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController concernsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Appointment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title for selecting doctor's name
            const Text(
              'Select Doctor\'s Name:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            // Dropdown for selecting doctor's name
            Center(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!; // Set to the selected doctor
                  });
                },
                items: const [
                  DropdownMenuItem<String>(
                    value: 'A',
                    child: Text('Doctor A'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'B',
                    child: Text('Doctor B'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'C',
                    child: Text('Doctor C'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'D',
                    child: Text('Doctor D'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Time Picker
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Select Time:'),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: selectedTime,
                    );
                    if (pickedTime != null && pickedTime != selectedTime) {
                      setState(() {
                        selectedTime = pickedTime;
                      });
                    }
                  },
                  child: Text(selectedTime.format(context)),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Boxed Text Field for concerns and illness
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: concernsController,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Enter Your Concerns and Illness',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Button to submit appointment
            ElevatedButton(
              onPressed: () {
                // Handle appointment submission logic here
                // You can access selectedDoctor, selectedDate, selectedTime, and concernsController.text
                // to save the appointment details
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Use the color of the navigation bar
              ),
              child: const Text('Book Appointment'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Change the color of the navigation bar
        currentIndex: 2, // Set to the index of the current page
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xff6283bb),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            backgroundColor: Color(0xff6283bb),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_sharp),
            backgroundColor: Color(0xff6283bb),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Color(0xff6283bb),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          // Handle navigation to other pages
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

void main() {
  runApp(const MaterialApp(
    home: BookAppointmentPage(),
  ));
}
