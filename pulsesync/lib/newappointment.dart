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
  TextEditingController fullNameController = TextEditingController();
  double age = 20.0;
  bool isDiabetic = false;
  TextEditingController diabeticDetailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Book Appointment',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Box for 'Select Doctor's Name:'
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Select Doctor\'s Name:',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      width: 150,
                      child: Center(
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
                              dropdownValue = newValue!;
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
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Date Picker
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Select Date:'),
                  ElevatedButton(
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2025),
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.light().copyWith(
                              primaryColor: const Color(
                                  0xff6283bb), // Header background color
                              hintColor: const Color(0xff6283bb), // Text color
                              colorScheme: const ColorScheme.light(
                                primary: Color(0xff6283bb), // Accent color
                              ),
                              buttonTheme: const ButtonThemeData(
                                textTheme: ButtonTextTheme.primary,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (pickedDate != null && pickedDate != selectedDate) {
                        setState(() {
                          selectedDate = pickedDate;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          const Color(0xff6283bb), // Button background color
                    ),
                    child: const Text(
                      'Choose Date',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Patient Details Box
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Patient Details:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      controller: fullNameController,
                      decoration: const InputDecoration(labelText: 'Full Name'),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Age: ${age.toInt()}'),
                        Expanded(
                          child: Slider(
                            value: age,
                            onChanged: (double value) {
                              setState(() {
                                age = value;
                              });
                            },
                            min: 1,
                            max: 100,
                            divisions: 99,
                            label: age.round().toString(),
                            activeColor: const Color(
                                0xff6283bb), // Color of the active part of the slider
                            inactiveColor: Colors.grey[
                                400], // Color of the inactive part of the slider
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Text('Diabetic:'),
                        Checkbox(
                          value: isDiabetic,
                          onChanged: (bool? value) {
                            setState(() {
                              isDiabetic = value ?? false;
                            });
                          },
                          activeColor: const Color(
                              0xff6283bb), // Color of the checkbox when checked
                        ),
                      ],
                    ),
                    if (isDiabetic)
                      TextFormField(
                        controller: diabeticDetailsController,
                        decoration: const InputDecoration(
                          labelText: 'Diabetic Details',
                          labelStyle: TextStyle(
                              color: Color(0xff6283bb)), // Color of the label
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(
                                    0xff6283bb)), // Color of the focused border
                          ),
                        ),
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
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.light().copyWith(
                              primaryColor: const Color(
                                  0xff6283bb), // Header background color
                              hintColor: const Color(
                                  0xff6283bb), // Color of the selected item
                              colorScheme: const ColorScheme.light(
                                primary: Color(0xff6283bb), // Accent color
                              ),
                              buttonTheme: const ButtonThemeData(
                                textTheme: ButtonTextTheme.primary,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (pickedTime != null && pickedTime != selectedTime) {
                        setState(() {
                          selectedTime = pickedTime;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          const Color(0xff6283bb), // Button background color
                    ),
                    child: Text(
                      selectedTime.format(context),
                      style: const TextStyle(color: Colors.white),
                    ),
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
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle appointment submission logic here
                    // You can access selectedDoctor, selectedDate, selectedTime, and concernsController.text
                    // to save the appointment details
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff6283bb),
                  ),
                  child: const Text(
                    'Book Appointment',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: 2,
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
