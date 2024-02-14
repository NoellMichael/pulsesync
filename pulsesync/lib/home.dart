import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pulsesync/alerts.dart';
import 'package:pulsesync/newappointment.dart';
import 'package:pulsesync/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Stream<DocumentSnapshot> vitalsStream;

  @override
  void initState() {
    super.initState();

    // Replace 'your_collection' with the actual collection name in your Firestore
    vitalsStream = FirebaseFirestore.instance
        .collection('your_collection')
        .doc('vitals_doc')
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vitals Monitoring',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: vitalsStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          // Extract vitals data from snapshot
          Map<String, dynamic>? vitalsData =
              snapshot.data?.data() as Map<String, dynamic>?;

          // Extract other personal details from Firestore
          String registrationNumber = vitalsData?['registration_number'] ?? '';
          int age = vitalsData?['age'] ?? 0;
          String phoneNumber = vitalsData?['phone_number'] ?? '';

          // Extract live vitals data
          double temperature = vitalsData?['temperature'] ?? 0.0;
          int heartRate = vitalsData?['heart_rate'] ?? 0;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Live Vitals Box
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Live Vitals',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text('Temperature: $temperature °C'),
                      Text('Heart Rate: $heartRate BPM'),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Personal Details
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Personal Details',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text('Registration Number: $registrationNumber'),
                      Text('Age: $age'),
                      Text('Phone Number: $phoneNumber'),
                      // Add more details as needed
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xff6283bb),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            backgroundColor: Color(0xff6283bb),
            label: "Alerts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_sharp),
            backgroundColor: Color(0xff6283bb),
            label: "Appointment",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Color(0xff6283bb),
            label: "Profile",
          ),
        ],
        onTap: (index) {
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
    home: HomePage(),
  ));
}
