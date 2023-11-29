import 'package:field_service/utils/essentials.dart';
import 'package:field_service/modules/home/dashboard.dart';
import 'package:field_service/modules/profile/widgets/image_widget.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:field_service/utils/widgets.dart/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPMobileScreen extends StatefulWidget {
  const OTPMobileScreen({super.key});

  @override
  State<OTPMobileScreen> createState() => _OTPMobileScreenState();
}

class _OTPMobileScreenState extends State<OTPMobileScreen> {
  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: currentSize.height * 0.01,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: currentSize.width * 0.02),
                  child: arrowBack(),
                )),
            Image.asset(
              MyImages.compLogo,
              width: currentSize.width * 0.35,
            ),
            SizedBox(
              height: currentSize.height * 0.035,
            ),
            userWidget(context),
            SizedBox(
              height: currentSize.height * 0.08,
            ),
            Text(
              'enterpin'.tr(),
              style: MyStyle.medium5().s14,
            ),
            SizedBox(
              height: currentSize.height * 0.02,
            ),
            otpFeildWidget(),
            Text(
              'forgotpin'.tr(),
              style: MyStyle.medium5().s14,
            ),
          ],
        ),
      ),
      bottomNavigationBar: logoWidget1(context),
    );
  }

  otpFeildWidget() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      child: PinCodeTextField(
        keyboardType: TextInputType.number,
        textStyle: const TextStyle(
          color: MyTheme.blackUnder0,
        ),
        length: 4,
        obscureText: false,
        animationType: AnimationType.fade,
        cursorColor: MyTheme.blackUnder0,
        pinTheme: PinTheme(
          borderWidth: 0.5,
          inactiveFillColor: MyTheme.bgColor,
          activeFillColor: MyTheme.bgColor,
          selectedFillColor: MyTheme.bgColor,
          selectedColor: MyTheme.blackUnder0,
          activeColor: MyTheme.blackUnder0,
          inactiveColor: MyTheme.blackUnder0,
          shape: PinCodeFieldShape.underline,
          borderRadius: BorderRadius.circular(10),
          fieldHeight: 50,
          fieldWidth: 45,
        ),
        animationDuration: const Duration(milliseconds: 300),
        // backgroundColor: MyTheme.white,
        enableActiveFill: true,
        // controller: context.read<ForgetModel>().otpControntroller,
        onCompleted: (v) {
          debugPrint("Completed");
          Helper.goToRemoveUntil(DashboardScreen.route);
        },
        onChanged: (value) {},
        beforeTextPaste: (text) {
          return true;
        },
        appContext: context,
      ),
    );
  }
}
