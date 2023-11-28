import 'package:easy_localization/easy_localization.dart';
import 'package:field_service/utils/colors.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

DateTime? backBtnPressTime;
Future<bool> onDefaultBackPressed() async {
  DateTime currentTime = DateTime.now();
  bool backButton = backBtnPressTime == null ||
      currentTime.difference(backBtnPressTime!) > const Duration(seconds: 2);

  if (backButton) {
    backBtnPressTime = currentTime;
    showFlutterToast(
      message: 'DoubleExit'.tr(),
    );
    return false;
  }
  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  return true;
}

void showFlutterToast({
  required String message,
}) {
  Fluttertoast.showToast(
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    msg: message,
    backgroundColor: MyTheme.black,
    textColor: MyTheme.white,
  );
}

void hideKeyBoard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

Widget logoWidget() {
  return Image.asset(
    MyImages.logo,
    height: 30,
    width: 225,
    fit: BoxFit.cover,
  );
}

Widget logoWidget1(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        color: MyTheme.bgColor,
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.13,
            bottom: MediaQuery.of(context).size.height * 0.02),
        // margin: EdgeInsets.only(bottom: 20, left: 50),
        child: Image.asset(
          MyImages.logo1,
          height: MediaQuery.of(context).size.height * 0.05,
          // fit: BoxFit.cover,
        ),
      ),
    ],
  );
}

Widget arrowBack() {
  return IconButton(
    onPressed: () {
      Helper.goToPrev();
    },
    icon: const Icon(
      Icons.arrow_back_outlined,
      color: Color(0xff262626),
      size: 28,
    ),
  );
}
