import 'package:field_service/modules/profile/profileModel.dart';
import 'package:field_service/modules/profile/profile_mobileBody.dart';
import 'package:field_service/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String route = '/profileScreen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBlueLayout<ProfileModel>(
        desktopBody: const ProfileMobileBody(),
        mobileBody: const ProfileMobileBody());
  }
}
