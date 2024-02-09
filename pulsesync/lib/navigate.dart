import 'package:flutter/material.dart';
import 'package:pulsesync/alerts.dart';
import 'package:pulsesync/home.dart';
import 'package:pulsesync/newappointment.dart';
import 'package:pulsesync/profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  static final List<Widget> _widgetoptions = <Widget>[
    const HomePage(),
    const Alerts(),
    const NewAppointments(),
    const Profile(),
  ];
  void _onitemtapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //endDrawer: const MyHeader(),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color(0xff191970),
      ),
      body: Center(
        child: _widgetoptions[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Colors.transparent, // Set background color to be transparent
        currentIndex: _currentIndex,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xff191970),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            backgroundColor: Color(0xff191970),
            label: "Alerts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_sharp),
            backgroundColor: Color(0xff191970),
            label: "Appointment",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Color(0xff191970),
            label: "Profile",
          ),
        ],
        onTap: _onitemtapped,
      ),
    );
  }
}
