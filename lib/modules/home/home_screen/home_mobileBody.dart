import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/helper.dart';
import 'package:flutter/material.dart';

class HomeMobileBody extends StatefulWidget {
  const HomeMobileBody({super.key});

  @override
  State<HomeMobileBody> createState() => _HomeMobileBodyState();
}

class _HomeMobileBodyState extends State<HomeMobileBody> {
  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.bgColor,
      appBar: Helper.getAppBar("TimeEntry".tr(), context, '0', "0", null),
      body:  Center(
        child: Text("Coming Soon",style: MyStyle.appbarTextStyle(MyTheme.primaryBlue).s20,),
      )
    );
  }
}
