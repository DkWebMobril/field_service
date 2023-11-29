import 'package:field_service/utils/essentials.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final String title;
  final Widget widget;
  const RowWidget({super.key, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Text(
            title,
            style: MyStyle.medium5().s12,
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        widget,
      ],
    );
  }
}
