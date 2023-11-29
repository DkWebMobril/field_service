import 'package:field_service/modules/profile/widgets/row_widgets.dart';
import 'package:field_service/utils/essentials.dart';
import 'package:flutter/material.dart';

class EntryDetailsWidget extends StatelessWidget {
  const EntryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shadowColor: Colors.black,
      color: MyTheme.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: MyTheme.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
          child: Column(
            children: [
               RowWidget(
                    title: 'Date'.tr(),
                    widget: Text(
                      'Friday 1 September 2023',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  const SizedBox(height: 8),
                   RowWidget(
                    title: 'Type'.tr(),
                    widget: Text(
                      'Hotel',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  const SizedBox(height: 8),
                   RowWidget(
                    title: 'Project'.tr(),
                    widget: Text(
                      'tep to enter',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  const SizedBox(height: 8),

                   RowWidget(
                    title: 'Jobnumber'.tr(),
                    widget: Text(
                      '...',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  const SizedBox(height: 8),
                   RowWidget(
                    title: 'Payment'.tr(),
                    widget: Text(
                      'Master Card',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  const SizedBox(height: 8),
                   RowWidget(
                    title: 'Amount'.tr(),
                    widget: Text(
                      '230,50 USD',
                      style: MyStyle.regular4().s10,
                    ),
                  ),
                  const SizedBox(height: 8),
                   RowWidget(
                    title: 'Comment'.tr(),
                    widget: Expanded(
                      child: Text(
                        'Bread and butter for meeting atcustomer.Drinks on the house',
                        style: MyStyle.regular4().s10,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ), 
                  const SizedBox(height: 8),
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
          )

          );
  }
}