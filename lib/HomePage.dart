import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'choose journal.dart';

// ignore: must_be_immutable

final List<String> imageList = [
  'assets/slider 1.jpg',
  'assets/slider2.jpeg',
  'assets/slider 3.jpg',
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  get top => null;


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

      body: SingleChildScrollView(
        child: Container(
    height: 2000,
        child: Stack(
          children:[
            Container (
            child: Positioned(
              right:  15,
              top: 10,
              child: Container(
                width: 50,
                height: 50,
                child: GestureDetector(
                  onPanUpdate: (DragUpdateDetails details) {
                    setState(() {

                    });
                  },
                  onTap: _launchURL,
                  child: const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/alameed logo.png'), // Replace with your image asset path
                  ),
                ),
              ),
            ),
            ),
            Container(
            child: Positioned(
              right: 75, // Use _left to position the second image as well
              top: 10 ,
              child: SizedBox(
                width: 50,
                height: 50,
                // Add an offset to position the second image
                child: GestureDetector(
                  onTap: _launchURL2,
                  child: const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage( 'assets/logocollege.JPG'), // Replace with your image asset path

                  ),

                ),

              ),
            ),
            ),
            Container (
            child: Positioned(
              child: Container(
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 600.0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                    items: imageList.map((imageURL) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Image.network(
                              imageURL,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            ),
            Container(
              child: Positioned(
                left:20,
                top: 500,
                child:Container(
                  height: 400,
                  width: 400,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome to My Website!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Image.asset(
                        'assets/logocollege.JPG', // Replace with your image path
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                            'Vestibulum euismod dolor nec arcu semper, at tincidunt mauris tincidunt. '
                            'Praesent faucibus enim a sem blandit, id tristique tortor varius. '
                            'Donec sed tincidunt velit, ac consequat nisl. '
                            'Nullam rhoncus lobortis nulla eu tincidunt.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ) ,
              ),
            ),
            Container(
              child: Positioned(
                left: 20,
                top: 900,
                child:Container(
                  height: 400,
                  width: 400,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome to My Website!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Image.asset(
                        'assets/logocollege.JPG', // Replace with your image path
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                            'Vestibulum euismod dolor nec arcu semper, at tincidunt mauris tincidunt. '
                            'Praesent faucibus enim a sem blandit, id tristique tortor varius. '
                            'Donec sed tincidunt velit, ac consequat nisl. '
                            'Nullam rhoncus lobortis nulla eu tincidunt.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ) ,
              ),
            ),
    ],
    ),

        ),
      ),
      );


  }
  void setState(Null Function() param0) {
  }

  widget({required Column child}) {}
}