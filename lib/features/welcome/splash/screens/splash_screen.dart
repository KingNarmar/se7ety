import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:se7ety/core/constants/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [SvgPicture.asset(AppImages.logo)]));
  }
}
