import 'package:field_service/utils/essentials.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  final Function() onPressed;
  final String title;
  const CommonButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: widget.onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        textStyle: MyStyle.medium5(MyTheme.white).s20,
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.055,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: MyTheme.primaryBlue),
          child: Text(
            widget.title,
          ),
        ));
  }
}
