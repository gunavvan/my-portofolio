import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';

import '../globals/app_text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.android,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.dart,
                  width: 350,
                  height: 350,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.flutter,
                  width: 350,
                  height: 350,
                  // color: AppColors.themeColor,
                ),
                // Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.java,
                  width: 350,
                  height: 350,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.kotlin,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
              ],
            ),
          ),
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.android,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.dart,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.flutter,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                // Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.java,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.kotlin,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
              ],
            ),
          ),
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.android,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.dart,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.flutter,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                // Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.java,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
                Image.asset(
                  AppAssets.kotlin,
                  width: 150,
                  height: 150,
                  // color: AppColors.themeColor,
                ),
                Constants.sizedBox(width: 24.0),
              ],
            ),
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.white,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'My ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'My Skills',
              style: AppTextStyles.headingStyles(
                  fontSize: 70.0, color: AppColors.bgColor),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 350,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 390 : 380,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30.0),
          // Text(
          //   title,
          //   style: AppTextStyles.montserratStyle(
          //       color: Colors.white, fontSize: 22.0),
          // ),
          // Constants.sizedBox(height: 12.0),
          // Text(
          //   "lll",
          //   style: AppTextStyles.normalStyle(fontSize: 14.0),
          //   textAlign: TextAlign.center,
          // ),
          // Constants.sizedBox(height: 20.0),
          // AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}
