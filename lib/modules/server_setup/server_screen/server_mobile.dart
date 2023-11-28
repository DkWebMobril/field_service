import 'package:field_service/utils/essentials.dart';
import 'package:field_service/modules/server_setup/choose_startup/startup_screen.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/widgets.dart/common_button.dart';
import 'package:field_service/utils/widgets.dart/common_widgets.dart';
import 'package:field_service/utils/widgets.dart/textInput_design.dart';
import 'package:flutter/material.dart';

class ServerMobile extends StatelessWidget {
  const ServerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyTheme.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: currentSize * 0.13,
            ),
            logoWidget(),
            SizedBox(
              height: currentSize * 0.2,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.13),
                child: Text(
                  "connectionserver".tr(),
                  style: MyStyle.medium5(MyTheme.black).s15,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AllInputDesign(
              hintText: 'serveriP'.tr(),
              keyBoardType: TextInputType.emailAddress,
              maxlength: 50,
              // controller: context.read<LoginModel>().emailControntroller,
            ),
            SizedBox(
              height: currentSize * 0.02,
            ),
            AllInputDesign(
              hintText: 'severport'.tr(),
              keyBoardType: TextInputType.emailAddress,
              maxlength: 50,
              // controller: context.read<LoginModel>().emailControntroller,
            ),
            SizedBox(
              height: currentSize * 0.08,
            ),
            CommonButton(
              onPressed: () {
                Helper.goToNext(StartupScreen.route);
              },
              title: "Next".tr(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: logoWidget1(context),
    );
  }
}
