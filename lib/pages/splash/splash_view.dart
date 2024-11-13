import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staynep/constants/font_constants.dart';
import 'package:staynep/pages/walkthrough/welcome_view.dart';

import '../../constants/color_constants.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () => Get.off(() => const WelcomeView()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Text("StayNep", style: titleStyle,),
      ),
    );
  }
}