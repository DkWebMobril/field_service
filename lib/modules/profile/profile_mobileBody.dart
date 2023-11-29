import 'package:field_service/modules/profile/widgets/private_widget.dart';
import 'package:field_service/utils/essentials.dart';
import 'package:field_service/modules/profile/widgets/image_widget.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/widgets.dart/toggle_switch.dart';
import 'package:flutter/material.dart';

import 'widgets/timeExpense_widget.dart';

class ProfileMobileBody extends StatefulWidget {
  const ProfileMobileBody({super.key});

  @override
  State<ProfileMobileBody> createState() => _ProfileMobileBodyState();
}

class _ProfileMobileBodyState extends State<ProfileMobileBody> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.bgColor,
      appBar: Helper.getAppBar("Profile".tr(), context, '0', "0", null),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          userWidget(context),
          const SizedBox(
            height: 10,
          ),
          // privateCardWidget(),
          const PrivateWidget(),
          const SizedBox(
            height: 20,
          ),
          // timeExpenseWidget()
          const TimeExpenseWidget()
        ]),
      ),
    );
  }

  // privateCardWidget() {
  //   return Card(
  //     elevation: 4,
  //     margin: EdgeInsets.symmetric(horizontal: 20),
  //     shadowColor: Colors.black,
  //     color: MyTheme.white,
  //     shape: RoundedRectangleBorder(
  //         side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
  //         borderRadius: BorderRadius.circular(10)),
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 15),
  //       child: Column(
  //         children: [
  //           Align(
  //             alignment: Alignment.centerLeft,
  //             child: Text(
  //               "Private".tr(),
  //               style: MyStyle.semiBold6().s16,
  //             ),
  //           ),
  //           SizedBox(height: 8),
  //            Padding(
  //         padding: const EdgeInsets.only(left: 10.0),
  //         child: Row(
  //           children: [
  //             SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.25,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: List.generate(listEntryLeft.length, (index) {
  //                   return Padding(
  //                     padding: const EdgeInsets.only(top: 8.0),
  //                     child: Text(
  //                       listEntryLeft[index],
  //                       style: MyStyle.medium5().s12,
  //                     ),
  //                   );
  //                 }),
  //               ),
  //             ),
  //             const SizedBox(
  //               width: 10,
  //             ),
  //             Expanded(
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: List.generate(listEntryRight.length, (index) {
  //                   return Padding(
  //                     padding: const EdgeInsets.only(top: 8.0),
  //                     child: Text(
  //                       listEntryRight[index],
  //                       style: MyStyle.regular4().s12,
  //                       maxLines: 4,
  //                       overflow: TextOverflow.ellipsis,
  //                     ),
  //                   );
  //                 }),
  //               ),
  //             ),
  //           ],
  //         )
  //            ),
  //           // Row(
  //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //   children: [
  //           //     Text(
  //           //       'useriD'.tr(),
  //           //       style: MyStyle.medium5().s12,
  //           //     ),
  //           //     Text(
  //           //       'jdo',
  //           //       style: MyStyle.regular4().s10,
  //           //     ),
  //           //   ],
  //           // ),
  //           // SizedBox(height: 8),
  //           // Row(
  //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //   children: [
  //           //     Text(
  //           //       'Pass'.tr(),
  //           //       style: MyStyle.medium5().s12,
  //           //     ),
  //           //     Text(
  //           //       '*********',
  //           //       style: MyStyle.regular4().s10,
  //           //     ),
  //           //   ],
  //           // ),
  //           // SizedBox(height: 8),
  //           // Row(
  //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //   children: [
  //           //     Text(
  //           //       'SalaryNo'.tr(),
  //           //       style: MyStyle.medium5().s12,
  //           //     ),
  //           //     Text(
  //           //       '46789',
  //           //       style: MyStyle.regular4().s10,
  //           //     ),
  //           //   ],
  //           // ),
  //           // SizedBox(height: 8),
  //           // Row(
  //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //   children: [
  //           //     Text(
  //           //       'E-mail'.tr(),
  //           //       style: MyStyle.medium5().s12,
  //           //     ),
  //           //     Text(
  //           //       'abc@email.com',
  //           //       style: MyStyle.regular4().s10,
  //           //     ),
  //           //   ],
  //           // ),
  //           // SizedBox(height: 8),
  //           // Row(
  //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //   children: [
  //           //     Text(
  //           //       'rcvEmail'.tr(),
  //           //       style: MyStyle.medium5().s12,
  //           //     ),
  //           //     CustomToggleButtons(
  //           //       isSwitched: false,
  //           //       onChanged: (value) {},
  //           //     ),
  //           //   ],
  //           // ),
  //           // SizedBox(height: 8),
  //           // Row(
  //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //   children: [
  //           //     Text(
  //           //       'Showjoblist'.tr(),
  //           //       style: MyStyle.medium5().s12,
  //           //     ),
  //           //     CustomToggleButtons(
  //           //       isSwitched: false,
  //           //     ),
  //           //   ],
  //           // ),
  //           // SizedBox(height: 8),
  //           // Row(
  //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //   children: [
  //           //     Text(
  //           //       'Addjob'.tr(),
  //           //       style: MyStyle.medium5().s12,
  //           //     ),
  //           //     CustomToggleButtons(
  //           //       isSwitched: false,
  //           //     ),
  //           //   ],
  //           // ),
  //           // SizedBox(height: 8),
  //           // Row(
  //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           //   children: [
  //           //     Text(
  //           //       'Addexpense'.tr(),
  //           //       style: MyStyle.medium5().s12,
  //           //     ),
  //           //     CustomToggleButtons(
  //           //       isSwitched: false,
  //           //     ),
  //           //   ],
  //           // ),
          
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // timeExpenseWidget() {
  //   return Card(
  //     elevation: 2,
  //     margin: EdgeInsets.symmetric(horizontal: 20),
  //     shadowColor: Colors.black,
  //     color: MyTheme.white,
  //     shape: RoundedRectangleBorder(
  //         side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
  //         borderRadius: BorderRadius.circular(10)),
  //     child: Padding(
  //       padding: EdgeInsets.all(10.0),
  //       child: Column(
  //         children: [
  //           Align(
  //             alignment: Alignment.centerLeft,
  //             child: Text(
  //               "TimeExpenses".tr(),
  //               style: MyStyle.semiBold6().s16,
  //             ),
  //           ),
  //           SizedBox(height: 8),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text(
  //                 'Overtimehours'.tr(),
  //                 style: MyStyle.medium5().s12,
  //               ),
  //               Text(
  //                 '9:00',
  //                 style: MyStyle.regular4().s10,
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 8),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('Hoursinplus'.tr(), style: MyStyle.medium5().s12),
  //               Text(
  //                 '0:00',
  //                 style: MyStyle.regular4().s10,
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 8),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('Hoursinminus'.tr(), style: MyStyle.medium5().s12),
  //               Text(
  //                 '4:50',
  //                 style: MyStyle.regular4().s10,
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 8),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('Holidaysleft'.tr(), style: MyStyle.medium5().s12),
  //               Text(
  //                 '12.5',
  //                 style: MyStyle.regular4().s10,
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 8),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text('Openexpenses'.tr(), style: MyStyle.medium5().s12),
  //               Text(
  //                 '734 USD',
  //                 style: MyStyle.regular4().s10,
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

}
