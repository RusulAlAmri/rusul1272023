import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ChoosePage extends StatelessWidget {

  final List<String> imageList = [
    'assets/slider 1.jpg',
    'assets/slider2.jpeg',
    'assets/slider 3.jpg',
  ];

    ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 500.0,
            autoPlay: .true,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
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
    );
  }
}
