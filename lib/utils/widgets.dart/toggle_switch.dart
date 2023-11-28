import 'package:field_service/utils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomToggleButtons extends StatefulWidget {
  bool isSwitched = false;
  final ValueChanged<bool>? onChanged;
  CustomToggleButtons({required this.isSwitched, super.key, this.onChanged});

  @override
  State<CustomToggleButtons> createState() => _CustomToggleButtonsState();
}

class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  void toggleSwitch(bool value) {
    widget.isSwitched = value;
    widget.onChanged?.call(value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => toggleSwitch(!widget.isSwitched),
      child: Container(
        height: 20,
        width: 35,
        decoration: BoxDecoration(
          color: !widget.isSwitched ? MyTheme.primaryBlue : MyTheme.bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(3),
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.only(
            left: widget.isSwitched ? 0 : 18,
            right: widget.isSwitched ? 18 : 0,
          ),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
    // Switch(
    //   value: widget.isSwitched,
    //   onChanged: toggleSwitch,
    //   activeTrackColor: MyTheme.primaryBlue,
    //   activeColor: MyTheme.primaryBlue,
    //   inactiveThumbColor: MyTheme.bgColor,
    //   inactiveTrackColor: MyTheme.bgColor,
    //   splashRadius: 50.0,
    // );
  }
}
