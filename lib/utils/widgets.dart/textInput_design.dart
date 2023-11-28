import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AllInputDesign extends StatefulWidget {
  final controller;
  final textInputAction;
  final focusNode;
  final prefixText;
  final enabled;
  final hintText;
  final inputHeaderName;
  final prefixStyle;
  final validator;
  final List<TextInputFormatter>? textFormatters;
  final errorText;
  final keyBoardType;
  final validatorFieldValue;
  final readonly;
  final Color styleColor;
  final Color inputColor;
  final obsecureText;
  final dynamic suffixIcon;
  final Color outlineBorder;
  final prefixIcon;
  final maxlength;

  const AllInputDesign({
    Key? key,
    this.controller,
    this.enabled,
    this.prefixText,
    this.prefixStyle,
    this.keyBoardType,
    this.obsecureText,
    this.suffixIcon,
    this.textFormatters,
    this.prefixIcon,
    this.hintText,
    this.inputHeaderName,
    this.validatorFieldValue,
    this.validator,
    this.errorText,
    this.textInputAction,
    this.focusNode,
    this.readonly,
    this.styleColor = Colors.black,
    this.outlineBorder = Colors.white,
    this.inputColor = Colors.white,
    this.maxlength,
  }) : super(key: key);

  @override
  _AllInputDesignState createState() => _AllInputDesignState();
}

class _AllInputDesignState extends State<AllInputDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            // color: Colors.red,
            // color: MyTheme.white.withOpacity(0.8),
            // spreadRadius: -10.5,
            blurRadius: 5.0,
            // offset: Offset(0.0, 0.25)
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      // padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        maxLength: widget.maxlength,
        readOnly: widget.readonly ?? false,
        cursorColor: MyTheme.primaryBlue,
        textInputAction: widget.textInputAction,

        focusNode: widget.focusNode,
        // style: MyStyle.medium5().s15,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          color: MyTheme.primaryBlue,
          letterSpacing: 0.8,
        ),
        keyboardType: widget.keyBoardType,
        inputFormatters: widget.textFormatters,

        validator: (val) => widget.validator(val, widget.validatorFieldValue),
        controller: widget.controller,
        enabled: widget.enabled,
        //  inputFormatters: widget.inputFormatterData,
        obscureText: widget.obsecureText ?? false,
        //  onChanged: widget.onChanged,
        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: MyTheme.white,
          hintText: (widget.hintText != null) ? widget.hintText : '',
          hintStyle: MyStyle.regular4().s12,
          suffixIcon: widget.suffixIcon,
          errorText: widget.errorText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: widget.outlineBorder, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: widget.outlineBorder, width: 1.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            // borderSide: const BorderSide(color: MyTheme.red, width: 1.0)
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: widget.outlineBorder, width: 1.0),
          ),
        ),
      ),
    );
  }
}
