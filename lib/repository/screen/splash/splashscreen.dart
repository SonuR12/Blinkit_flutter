import 'package:flutter/material.dart';
import 'package:ecomm_flutter/domain/constants/appcolors.dart';
import 'package:ecomm_flutter/repository/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: "blinkit.jpeg"),
          ],
        ),
      ),
    );
  }
}
