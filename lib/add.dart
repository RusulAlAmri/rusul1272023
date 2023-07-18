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
  HomePage({super.key});


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
        child: Stack(
          children:[
            Positioned(
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
            Positioned(
              right: 75, // Use _left to position the second image as well
              top: 10 ,

              child: Container(
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
            Positioned(

              child: Container(
                height: 600,
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
            Positioned(
                top: 500 ,
                left:   100 ,

                child: Container(
                  height: 200,
                  width: 200,
                  color : Colors.green,


                ))
          ],
        ),
      ),
    );

  }


  void setState(Null Function() param0) {
  }

  widget({required Column child}) {}
}