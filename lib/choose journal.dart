import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'HomePage.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

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
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              Positioned(
                top: 100,
                right: 100,
                bottom: 0,
                left: 200,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}