import 'package:field_service/modules/server_setup/choose_startup/startupModel.dart'; 
import 'package:field_service/modules/server_setup/choose_startup/startup_mobileBody.dart'; 
import 'package:field_service/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class StartupScreen extends StatelessWidget {
    static const String route = "/startupScreen";
  const StartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGreyLayout<StartUpSetModel>(
      desktopBody: StartUpMobileScreen(),
      mobileBody: StartUpMobileScreen() 
    );
  }
}