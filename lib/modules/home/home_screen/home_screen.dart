import 'package:field_service/modules/home/home_screen/homeModel.dart';
import 'package:field_service/modules/home/home_screen/home_mobileBody.dart';
import 'package:field_service/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBlueLayout<HomeModel>(
        desktopBody: const HomeMobileBody(),
        mobileBody: const HomeMobileBody());
  }
}