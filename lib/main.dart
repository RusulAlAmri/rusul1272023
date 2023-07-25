import 'package:flutter/material.dart';
import 'package:untitled2/staffPage.dart';
import 'HomePage.dart';
import 'choose journal.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University of Al-Ameed',
      theme: ThemeData(
        primarySwatch: Colors.teal ,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
      const HomePage(),

    const StaffPage(),
    const MyApp(),

    const Text('Create Account'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/alameed logo.png', // Replace with your logo image asset path
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 8),
            const Text('University of Al-Ameed'),
          ],
        ),

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/logocollege.JPG'), // Replace with your image asset path
                  ),
                  SizedBox(height: 8),
                  Text(
                    'College of Nursing ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home,color: Colors.teal,),
              title: const Text('Home'),
              onTap: () {
                _onItemTapped(0); // Navigate to Home screen
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.people,color: Colors.teal,),
              title: const Text('Staff'),
              onTap: () {
                _onItemTapped(1); // Navigate to Search screen
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.book,color: Colors.teal,),
              title: const Text('Journal'),
              onTap: () {
                _onItemTapped(2); // Navigate to Profile screen
                Navigator.pop(context); // Close the drawer
              },
            ),

            ListTile(
              leading: const Icon(Icons.account_box,color: Colors.teal,),
              title: const Text('Account'),
              onTap: () {
                _onItemTapped(2); // Navigate to Profile screen
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.teal,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people,color: Colors.teal,),
            label: 'staff',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,color: Colors.teal,),
            label: 'journal',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_box,color:Colors.teal,),
            label: 'account',
          ),
        ],
      ),
    );
  }
}
