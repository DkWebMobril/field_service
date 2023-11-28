import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:field_service/utils/widgets.dart/common_button.dart';
import 'package:flutter/material.dart';

class ExpenseEntryMobileBody extends StatefulWidget {
  const ExpenseEntryMobileBody({super.key});

  @override
  State<ExpenseEntryMobileBody> createState() => _ExpenseEntryMobileBodyState();
}

class _ExpenseEntryMobileBodyState extends State<ExpenseEntryMobileBody> {
  List listEntryLeft = [
    "Date",
    'Type',
    'Project',
    'Jobnumber',
    'Payment',
    'Amount',
    'Comment'
  ];
  List listEntryRight = [
    'Friday 1 September 2023',
    'Hotel',
    'tep to enter',
    '...',
    'Master Card',
    '230,50 USD',
    'Bread and butter for meeting atcustomer.Drinks on the house'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.bgColor,
      appBar: Helper.getAppBar("ExpensesEntry".tr(), context, '1', "0", null),
      body: Column(children: [
        const SizedBox(height: 10),
        entryDetailWidget(),
        const SizedBox(height: 10),
        commentBox(),
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

  entryDetailWidget() {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shadowColor: Colors.black,
      color: MyTheme.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(listEntryLeft.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        listEntryLeft[index],
                        style: MyStyle.medium5().s12,
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(listEntryRight.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        listEntryRight[index],
                        style: MyStyle.regular4().s12,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  }),
                ),
              ),
            ],
          )

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

          ),
    );
  }

  commentBox() {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shadowColor: Colors.black,
      color: MyTheme.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(MyImages.invoice,
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.15),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Text(
                'Tap to enter comment',
                style: MyStyle.regular4().s12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
