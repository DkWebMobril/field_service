import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropDownBox extends StatefulWidget {
  String dropDownValue;
  String hintText;
  final List dropDownList;
  DropDownBox(
      {required this.dropDownValue,
      required this.hintText,
      required this.dropDownList,
      super.key});

  @override
  State<DropDownBox> createState() => _DropDownBoxState();
}

class _DropDownBoxState extends State<DropDownBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.75,
      // alignment: Alignment.center,
      padding: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyTheme.white,
          border: Border.all(color: MyTheme.white, width: 1.0),
          boxShadow:const [
           BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),  
            blurRadius: 5.0, 
          ),
        ],
          ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
            hint: Text(
              widget.hintText,
              style: MyStyle.regular4().s12,
            ),
            value: widget.dropDownValue.toString(),
            isExpanded: true,
            alignment: Alignment.center,
            style: MyStyle.regular4().s12,
            underline: const Divider(
              color: Colors.transparent,
              thickness: 0.5,
            ),
            iconStyleData: const IconStyleData(
              icon: ImageIcon(
                AssetImage(MyImages.dropdownIcon),
                size: 20,
                color: MyTheme.black,
              ),
              iconSize: 2,
              iconEnabledColor: Colors.transparent,
              iconDisabledColor: Colors.transparent,
            ),
            onChanged: (newValue) {
              setState(() {
                widget.dropDownValue = newValue!;
              });
            },
            items: widget.dropDownList.map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value.toString()),
              );
            }).toList()),
      ),
    );
  }
}
