 
 
import 'package:field_service/responsive/responsive_layout.dart';
import 'package:field_service/modules/server_setup/server_screen/serverModel.dart'; 
import 'package:field_service/modules/server_setup/server_screen/server_mobile.dart';
 
import 'package:flutter/material.dart';
 

class ServerScreen extends StatelessWidget {
  static const String route = '/serverScreen';
  const ServerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGreyLayout<ServerModel>(
      desktopBody: ServerMobile(),
      mobileBody: ServerMobile() 
    );
  }
}
