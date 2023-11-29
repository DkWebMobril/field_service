import 'package:field_service/modules/profile/widgets/row_widgets.dart';
import 'package:field_service/utils/essentials.dart';
import 'package:flutter/material.dart';

class TimeExpenseWidget extends StatelessWidget {
  const TimeExpenseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 20),
      shadowColor: Colors.black,
      color: MyTheme.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "TimeExpenses".tr(),
                style: MyStyle.semiBold6().s16,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: [
                  RowWidget(
                    title: 'Overtimehours'.tr(),
                    widget: Text(
                      '9:00',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'Hoursinplus'.tr(),
                    widget: Text(
                      '0:00',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'Hoursinminus'.tr(),
                    widget: Text(
                      '4:50',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'Holidaysleft'.tr(),
                    widget: Text(
                      '12.5',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  SizedBox(height: 8),
                  RowWidget(
                    title: 'Openexpenses'.tr(),
                    widget: Text(
                      '734 USD',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       'Overtimehours'.tr(),
            //       style: MyStyle.medium5().s12,
            //     ),
            //     Text(
            //       '9:00',
            //       style: MyStyle.regular4().s10,
            //     ),
            //   ],
            // ),
            // SizedBox(height: 8),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text('Hoursinplus'.tr(), style: MyStyle.medium5().s12),
            //     Text(
            //       '0:00',
            //       style: MyStyle.regular4().s10,
            //     ),
            //   ],
            // ),
            // SizedBox(height: 8),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text('Hoursinminus'.tr(), style: MyStyle.medium5().s12),
            //     Text(
            //       '4:50',
            //       style: MyStyle.regular4().s10,
            //     ),
            //   ],
            // ),
            // SizedBox(height: 8),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text('Holidaysleft'.tr(), style: MyStyle.medium5().s12),
            //     Text(
            //       '12.5',
            //       style: MyStyle.regular4().s10,
            //     ),
            //   ],
            // ),
            // SizedBox(height: 8),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text('Openexpenses'.tr(), style: MyStyle.medium5().s12),
            //     Text(
            //       '734 USD',
            //       style: MyStyle.regular4().s10,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
