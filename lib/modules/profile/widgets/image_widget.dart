import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';

Widget userWidget(BuildContext context) {
  return Container(
    child: Column(
      children: [
        Image.asset(
          MyImages.dummy,
          height: MediaQuery.of(context).size.height * 0.11,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'hUserNmae'.tr(),
          style: MyStyle.medium5().s18,
        ),
      ],
    ),
  );
}
