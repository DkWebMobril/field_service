import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({super.key});

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
        padding: const EdgeInsets.all(10.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.asset(MyImages.invoice,
                  // width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.15),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.1 ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 15),
              child: Text(
                'Tap to enter comment',
                style: MyStyle.regular4().s12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}