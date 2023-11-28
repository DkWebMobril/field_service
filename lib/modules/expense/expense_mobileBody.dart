import 'package:field_service/utils/essentials.dart';
import 'package:field_service/modules/expense/popup_widget.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';

class ExpenseMobileBody extends StatefulWidget {
  const ExpenseMobileBody({super.key});

  @override
  State<ExpenseMobileBody> createState() => _ExpenseMobileBodyState();
}

class _ExpenseMobileBodyState extends State<ExpenseMobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.bgColor,
        appBar: Helper.getAppBar("Expenses".tr(), context, '0', "0", null),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: MediaQuery.of(context).size.width * 0.08),
              color: MyTheme.white,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "OpenExpenses".tr(),
                    style: MyStyle.medium5().s14,
                  ),
                  Text(
                    "730,50 USD",
                    style: MyStyle.medium5().s14,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return expenseCard();
                },
              ),
            )
          ],
        ));
  }

  expenseCard() {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shadowColor: Colors.black,
      color: MyTheme.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: EdgeInsets.only(left: 8, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "September 01",
                      style: MyStyle.semiBold6().s14,
                    ),
                  ),

                  // Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Text(
                    "730,677 USD",
                    style: MyStyle.regular4().s12,
                  ),

                  const PopupMenuCommon(),
                ],
              ),
              Text(
                "Eating with customer had lot of fun,See pictures",
                style: MyStyle.regular4().s10,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  const ImageIcon(AssetImage(MyImages.gallery), size: 12),
                  Text(
                    "Attachfile".tr(),
                    style: MyStyle.medium5().s10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.camera_alt_outlined,
                    size: 12,
                  ),
                  Text(
                    "Takephoto".tr(),
                    style: MyStyle.medium5().s10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: MyTheme.appColor
                        // color: MyTheme.greenColor
                        ),
                    child: Text(
                      'Approve'.tr(),
                      style: MyStyle.regular4(MyTheme.white).s12,
                    ),
                  )
                ],
              ),
            ],
          )

          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "September 01",
          //           style: MyStyle.semiBold6().s14,
          //         ),
          //         SizedBox(
          //           height: 10,
          //         ),
          //         Text(
          //           "Eating with customer had lot of fun,See pictures ",
          //           style: MyStyle.regular4().s10,
          //           maxLines: 2,
          //           overflow: TextOverflow.ellipsis,
          //         ),
          //         SizedBox(
          //           height: 10,
          //         ),
          //         Row(
          //           children: [
          //             ImageIcon(AssetImage(MyImages.gallery), size: 15),
          //             Text(
          //               "Attachfile".tr(),
          //               style: MyStyle.medium5().s10,
          //             ),
          //             SizedBox(
          //               width: 10,
          //             ),
          //             Icon(
          //               Icons.camera_alt_outlined,
          //               size: 15,
          //             ),
          //             Text(
          //               "Takephoto".tr(),
          //               style: MyStyle.medium5().s10,
          //             )
          //           ],
          //         ),
          //       ],
          //     ),
          //     Column(
          //       // crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Row(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           // mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Text(
          //               "730 USD",
          //               style: MyStyle.regular4().s12,
          //             ),
          //             Container(width: 4, child: PopupMenuCommon())
          //           ],
          //         ),
          //         Container(
          //           padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(30),
          //               color: MyTheme.appColor
          //               // color: MyTheme.greenColor
          //               ),
          //           child: Text(
          //             'Approve',
          //             style: MyStyle.regular4(MyTheme.white).s12,
          //           ),
          //         )
          //       ],
          //     )
          //   ],
          // ),

          ),
    );
  }
}
