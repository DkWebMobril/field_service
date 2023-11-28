import 'package:field_service/utils/essentials.dart';
import 'package:field_service/modules/otp_module/otp_screen.dart';
import 'package:field_service/modules/server_setup/choose_startup/startup_widgets.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/widgets.dart/dropDown_widget.dart';
import 'package:field_service/utils/widgets.dart/common_button.dart';
import 'package:field_service/utils/widgets.dart/common_widgets.dart';
import 'package:field_service/utils/widgets.dart/textInput_design.dart';
import 'package:flutter/material.dart';

class StartUpMobileScreen extends StatefulWidget {
  const StartUpMobileScreen({super.key});

  @override
  State<StartUpMobileScreen> createState() => _StartUpMobileScreenState();
}

class _StartUpMobileScreenState extends State<StartUpMobileScreen> {
  List itemDepart = [
    'Department',
    'Department2',
    'Department3',
    'Department4',
    'Department5'
  ];
  List itemLanguage = ["Language", "Language2", "Language3"];
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
                    "choosestartup".tr(),
                    style: MyStyle.medium5(MyTheme.black).s15,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DropDownBox(
                  dropDownValue: 'Department'.tr(),
                  hintText: 'department'.tr(),
                  dropDownList: itemDepart),
              SizedBox(
                height: currentSize * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const ListUser();
                      });
                },
                child: AllInputDesign(
                  hintText: 'useriD'.tr(),
                  keyBoardType: TextInputType.emailAddress,
                  maxlength: 50,
                  enabled: false,
                ),
              ),
              SizedBox(
                height: currentSize * 0.02,
              ),
              DropDownBox(
                  dropDownValue: 'Language'.tr(),
                  hintText: 'Language'.tr(),
                  dropDownList: itemLanguage),
              SizedBox(
                height: currentSize * 0.08,
              ),
              CommonButton(
                onPressed: () {
                  Helper.goToNext(OTPScreen.route);
                },
                title: "Next".tr(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: logoWidget1(context));
  }
}
