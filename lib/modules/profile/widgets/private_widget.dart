import 'package:field_service/modules/profile/widgets/row_widgets.dart';
import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/widgets.dart/toggle_switch.dart';
import 'package:flutter/material.dart';

class PrivateWidget extends StatelessWidget {
  const PrivateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shadowColor: Colors.black,
      color: MyTheme.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Private".tr(),
                style: MyStyle.semiBold6().s16,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: [
                  RowWidget(
                    title: 'useriD'.tr(),
                    widget: Text(
                      'jdo',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'Pass'.tr(),
                    widget: Text(
                      '*********',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'SalaryNo'.tr(),
                    widget: Text(
                      '46789',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'E-mail'.tr(),
                    widget: Text(
                      'abc@email.com',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'rcvEmail'.tr(),
                    widget: CustomToggleButtons(
                      isSwitched: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'Showjoblist'.tr(),
                    widget: CustomToggleButtons(
                      isSwitched: false,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'Addjob'.tr(),
                    widget: CustomToggleButtons(
                      isSwitched: false,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'Addexpense'.tr(),
                    widget: CustomToggleButtons(
                      isSwitched: false,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
