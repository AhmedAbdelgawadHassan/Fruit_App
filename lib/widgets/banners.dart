import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
   Banners({super.key});

  final List<String> banners = [
    "assets/banners/Slider 1.png",
    "assets/banners/Slider 2.png",
    "assets/banners/Slider 3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return   CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayCurve: Curves.linear,
                height: 170,
                autoPlayAnimationDuration: Duration(seconds: 3),
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                viewportFraction: 0.6,

              ),

              items: banners.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image(image: AssetImage(i));
                  },
                );
              }).toList(),
    );
  }
}