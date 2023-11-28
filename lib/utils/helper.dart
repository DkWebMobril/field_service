import 'package:field_service/main.dart';
import 'package:field_service/utils/colors.dart';
import 'package:field_service/utils/styling.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Helper {
  static goToNext(String routeName, {dynamic argument}) {
    Navigator.pushNamed(
      navigatorkey.currentContext!,
      routeName,
      arguments: argument,
    );
  }

  static goToPrev() {
    Navigator.pop(navigatorkey.currentContext!);
  }

  static goToRemoveUntil(String routeName, {dynamic argument}) {
    Navigator.pushNamedAndRemoveUntil(
      navigatorkey.currentContext!,
      routeName,
      (route) => false,
      arguments: argument,
    );
  }

  static getAppBar(String title, BuildContext context, String leadingType,
      String actionType, AsyncCallback? onBackButton) {
    return AppBar(
      // centerTitle: true,
      title: Text(
        title,
        style: MyStyle.appbarTextStyle(MyTheme.white).s20,
      ),
      elevation: 0.0,
      backgroundColor: MyTheme.appColor,
      leading: leadingType == '1'
          ? IconButton(
              onPressed: () => (onBackButton == null)
                  ? Navigator.pop(context)
                  : onBackButton.call(),
              icon: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.arrow_back_sharp,
                  size: 25,
                  color: MyTheme.white,
                ),
              ),
            )
          : null,
      actions: (actionType == "1") ? [] : null,
    );
  }
}
