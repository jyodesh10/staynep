import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:staynep/constants/color_constants.dart';
import 'package:staynep/constants/font_constants.dart';

import 'walkthrough_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => Get.off(() => const WalkthroughView()),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: Image.asset("assets/images/welcome.jpg", fit: BoxFit.cover,)),
          Positioned(
            top: 60.h,
            left: 8.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to", style: titleStyle.copyWith(color: white),),
                Text("StayNep", style: titleStyle.copyWith(fontSize: 25.sp, color: white),),
                Text("The Best hotel booking in Nepal to\naccompany your vacation", style: subtitleStyle.copyWith(color: white,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}