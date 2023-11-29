import 'package:field_service/modules/expense/expense_entry/widgets/comments_widgets.dart';
import 'package:field_service/modules/expense/expense_entry/widgets/entrydetail_widget.dart';
import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/helper.dart'; 
import 'package:field_service/utils/widgets.dart/common_button.dart';
import 'package:flutter/material.dart';

class ExpenseEntryMobileBody extends StatefulWidget {
  const ExpenseEntryMobileBody({super.key});

  @override
  State<ExpenseEntryMobileBody> createState() => _ExpenseEntryMobileBodyState();
}

class _ExpenseEntryMobileBodyState extends State<ExpenseEntryMobileBody> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.bgColor,
      appBar: Helper.getAppBar("ExpensesEntry".tr(), context, '0', "0", null),
      body: const Column(children: [
        SizedBox(height: 10),
        EntryDetailsWidget(), 
        SizedBox(height: 10),
        CommentsWidget(),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: CommonButton(
          onPressed: () {},
          title: "Save".tr(),
        ),
      ),
    );
  }

  // entryDetailWidget() {
  //   return Card(
  //     elevation: 2,
  //     margin: const EdgeInsets.symmetric(horizontal: 20),
  //     shadowColor: Colors.black,
  //     color: MyTheme.white,
  //     shape: RoundedRectangleBorder(
  //         side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
  //         borderRadius: BorderRadius.circular(10)),
  //     child: Padding(
  //         padding: const EdgeInsets.all(10.0),
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

          // Column(
          //   children: [
          //     const SizedBox(height: 8),
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           'Date'.tr(),
          //           style: MyStyle.medium5().s12,
          //         ),
          //         SizedBox(width: MediaQuery.of(context).size.width * 0.2),
          //         Text(
          //           '9:00',
          //           style: MyStyle.regular4().s10,
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 8),
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text('Type'.tr(), style: MyStyle.medium5().s12),
          //         SizedBox(width: MediaQuery.of(context).size.width * 0.2),
          //         Text(
          //           '0:00',
          //           style: MyStyle.regular4().s10,
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 8),
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text('Project'.tr(), style: MyStyle.medium5().s12),
          //         SizedBox(width: MediaQuery.of(context).size.width * 0.2),
          //         Text(
          //           '4:50',
          //           style: MyStyle.regular4().s10,
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 8),
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text('Jobnumber'.tr(), style: MyStyle.medium5().s12),
          //         SizedBox(width: MediaQuery.of(context).size.width * 0.12),
          //         Text(
          //           '12.5',
          //           style: MyStyle.regular4().s10,
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 8),
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text('Payment'.tr(), style: MyStyle.medium5().s12),
          //         SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          //         Text(
          //           '734 USD',
          //           style: MyStyle.regular4().s10,
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 8),
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text('Amount'.tr(), style: MyStyle.medium5().s12),
          //         SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          //         Text(
          //           '734 USD',
          //           style: MyStyle.regular4().s10,
          //         ),
          //       ],
          //     ),
          //     const SizedBox(height: 8),
          //     Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Text('Comment'.tr(), style: MyStyle.medium5().s12),
          //         SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          //         Expanded(
          //           child: Text(
          //             'Bread and butter for meeting at customer.Drinks on the house',
          //             style: MyStyle.regular4().s12,
          //             maxLines: 3,
          //             overflow: TextOverflow.ellipsis,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),

          // ),
    // );
  }

 
