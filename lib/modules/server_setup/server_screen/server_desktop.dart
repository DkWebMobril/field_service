import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/widgets.dart/textInput_design.dart';
import 'package:flutter/material.dart';

class ServerDesktop extends StatelessWidget {
  const ServerDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         AllInputDesign(
          hintText: 'hEmailHint'.tr(),
          keyBoardType: TextInputType.emailAddress,
          maxlength: 50,
          // controller: context.read<LoginModel>().emailControntroller,
          
        ),
         AllInputDesign(
          hintText: 'hEmailHint'.tr(),
          keyBoardType: TextInputType.emailAddress,
          maxlength: 50,
          // controller: context.read<LoginModel>().emailControntroller,
          
        ),
      ],
     
    );
  }
}