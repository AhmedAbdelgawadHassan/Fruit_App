// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruit/models/category.dart';

class TypesBanner extends StatelessWidget {
     TypesBanner({super.key});
    List<CategoryModel> category = [
    CategoryModel(name: 'Fruits', image: "assets/category/fruits.png"),
    CategoryModel(name: 'Milk & Egg', image: "assets/category/egg.png"),
    CategoryModel(name: 'Bavergas', image: "assets/category/bavergas.png"),
    CategoryModel(name: 'luandry', image: "assets/category/luandry.png"),
  ];


  @override
  Widget build(BuildContext context) {
    return  CarouselSlider.builder(
              itemCount: category.length,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(category[index].image),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      category[index].name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
               autoPlay: true,
                autoPlayCurve: Curves.linear,
                height: 120,
                autoPlayAnimationDuration: Duration(seconds: 3),
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: false,
                viewportFraction: 0.3,
              ),
        );
  }
}