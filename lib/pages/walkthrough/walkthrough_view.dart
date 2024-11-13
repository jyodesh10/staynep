import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:staynep/constants/color_constants.dart';
import 'package:staynep/constants/font_constants.dart';
import 'package:staynep/controllers/walkthrough_controller.dart';
import 'package:staynep/widgets/custom_button.dart';

class WalkthroughView extends StatefulWidget {
  const WalkthroughView({super.key});

  @override
  State<WalkthroughView> createState() => _WalkthroughViewState();
}

class _WalkthroughViewState extends State<WalkthroughView> {

  final controller = Get.put(WalkthroughController());

  @override
  void initState() {
    super.initState();
    controller.currentpage.value == 2;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Obx(() =>
              SizedBox(
                width: 100.w,
                height: 60.h,
                child: Image.asset(
                  controller.currentpage.value == 1
                   ? "assets/images/walkthrough.png"
                   : controller.currentpage.value == 2
                    ? "assets/images/w2.png"
                    : "assets/images/w3.png", 
                  fit: BoxFit.fitHeight,),
              ),
            ),
            Obx(() =>
              controller.currentpage.value == 1
                ? walkthroughDetail1()
                : controller.currentpage.value == 2
                  ? walkthroughDetail2()
                  : walkthroughDetail3()
            )
          ],
        ),
      ),
    );
  }
  
  walkthroughDetail1() {
    return Container(
      width: 100.w,
      height: 34.h,
      color: white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Travel Safely,", style: titleStyle.copyWith(fontSize: 18.sp),),
            Text("comfortably & easily,", style: titleStyle.copyWith(fontSize: 18.sp),),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              "Lorem ipsum lorem ipsom Lorem ipsum lorem\nLoremipsum lorem ipsum lorem  ipsum lorem ipsom\nLoremipsum lorem  ipsum lorem ipsom\nLoremipsum lorem ipsum lorem  ipsum lorem ipsom", 
              style: subtitleStyle.copyWith(fontSize: 13.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.sp,
            ),
            CustomButton(title: "Next", ontap: () { controller.currentpage.value = 2; },),
            SizedBox(
              height: 10.sp,
            ),
            CustomButton(title: "Skip", ontap: () {}, color: grey,),
          ],
        ),
      ),
    );
  }
  
  walkthroughDetail2() {
    return Container(
      width: 100.w,
      height: 34.h,
      color: white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Find the best hotels for", style: titleStyle.copyWith(fontSize: 18.sp),),
            Text("your vacations", style: titleStyle.copyWith(fontSize: 18.sp),),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              "Lorem ipsum lorem ipsom Lorem ipsum lorem\nLoremipsum lorem ipsum lorem  ipsum lorem ipsom\nLoremipsum lorem  ipsum lorem ipsom\nLoremipsum lorem ipsum lorem  ipsum lorem ipsom", 
              style: subtitleStyle.copyWith(fontSize: 13.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.sp,
            ),
            CustomButton(
              title: "Next", 
              ontap: () {
                controller.currentpage.value = 3;
                log(controller.currentpage.value.toString());
              },),
            SizedBox(
              height: 10.sp,
            ),
            CustomButton(title: "Skip", ontap: () {}, color: grey,),
          ],
        ),
      ),
    );
  }
  walkthroughDetail3() {
    return Container(
      width: 100.w,
      height: 34.h,
      color: white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Let's discover the world", style: titleStyle.copyWith(fontSize: 18.sp),),
            Text("with us", style: titleStyle.copyWith(fontSize: 18.sp),),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              "Lorem ipsum lorem ipsom Lorem ipsum lorem\nLoremipsum lorem ipsum lorem  ipsum lorem ipsom\nLoremipsum lorem  ipsum lorem ipsom\nLoremipsum lorem ipsum lorem  ipsum lorem ipsom", 
              style: subtitleStyle.copyWith(fontSize: 13.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.sp,
            ),
            CustomButton(title: "Next", ontap: () {},),
            SizedBox(
              height: 10.sp,
            ),
            CustomButton(title: "Skip", ontap: () {}, color: grey,),
          ],
        ),
      ),
    );
  }

}