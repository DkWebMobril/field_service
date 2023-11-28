import 'package:field_service/modules/otp_module/otp_mobile.dart';
import 'package:field_service/modules/otp_module/otp_model.dart';
import 'package:field_service/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});
  static const String route = '/otpScreen';

  @override
  Widget build(BuildContext context) {
    return ResponsiveGreyLayout<OTPModel>(
        desktopBody: OTPMobileScreen(), mobileBody: OTPMobileScreen());
  }
}
