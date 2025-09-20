// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit/widgets/banners.dart';
import 'package:fruit/widgets/types_banner.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const Icon(Icons.motorcycle, size: 25),
          title: Row(
            children: [
              const Text(
                "61 Hopper Street..",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Icon(Icons.keyboard_arrow_down_outlined, size: 25),
              Spacer(),
              SvgPicture.asset('assets/icons/basket.svg'),
            ],
          ),
        ),
        body: Column(
          children: [
            Banners(), // Using the AutoPlay Banner
            SizedBox(height: 20),
            TypesBanner(),  // Using the AutoPlay Types_Banner
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Fruits",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.green),
                  ),
                ],
              ),
            )
           
        ],
        ),
      ),
    );
  }
}
