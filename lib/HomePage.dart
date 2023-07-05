import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable

final List<String> imageList = [
   'assets/slider 1.jpg',
   'assets/slider2.jpeg',
   'assets/slider 3.jpg',
];



class HomePage extends StatelessWidget {
  HomePage({super.key});
  double _left = 5.0;
  double _top = 5.0;
  double right = 5.0;
  double bottom = 5.0;
  void _launchURL() async {
    const url = 'https://alameed.edu.iq/'; // Replace with your desired URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURL2() async {
    const url = 'https://alameed.edu.iq/College-of-Nursing'; // Replace with your desired URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),

     body: Stack(
    children: <Widget>[
    Positioned(
    right: _left,
    top: _top,
    child: GestureDetector(
    onPanUpdate: (DragUpdateDetails details) {
    setState(() {
    _left += details.delta.dx;
    _top += details.delta.dy;
    });
    },
      onTap: _launchURL,
    child: const CircleAvatar(
    radius: 25,
    backgroundImage: AssetImage('assets/alameed logo.png'), // Replace with your image asset path
    ),
    ),
    ),

    Positioned(
    right: _left + 55, // Use _left to position the second image as well
    top: _top , // Add an offset to position the second image
      child: GestureDetector(
        onTap: _launchURL2,
    child: const CircleAvatar(
    radius: 25,
    backgroundImage: AssetImage( 'assets/logocollege.JPG'), // Replace with your image asset path

    ),

    ),

    ),
    ],

   ),
    );
  }


  void setState(Null Function() param0) {
  }
}