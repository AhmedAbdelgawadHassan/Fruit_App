import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
@override
void initState() {
  super.initState();
  Future.delayed(const Duration(seconds: 3), () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeView()));
  });
}

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: Center(
            child: SvgPicture.asset(
              "assets/logo/logo.svg",
            ),
          ),
        ),
    );
  }
}
