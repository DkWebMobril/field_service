import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';

class ListUser extends StatefulWidget {
  const ListUser({super.key});

  @override
  State<ListUser> createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: const EdgeInsets.all(5.0),
      content: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: MyTheme.white,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Westside Branch"),
                  Text("1 may,9:00am"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            searchBox(context),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: userList(),
            )
          ],
        ),
      ),
    );
  }
}

searchBox(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.05,
    width: MediaQuery.of(context).size.width * 0.65,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextFormField(
      maxLength: 30,
      cursorColor: MyTheme.primaryBlue,
      textInputAction: TextInputAction.done,
      style: MyStyle.regular4().s15,
      keyboardType: TextInputType.text,
      // controller: widget.controller,
      decoration: InputDecoration(
        counterText: "",
        filled: true,
        fillColor: MyTheme.white,
        hintText: 'Search user name',
        hintStyle: MyStyle.regular4().s14,
        suffixIcon: Icon(Icons.search, color: MyTheme.black),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: MyTheme.black, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: MyTheme.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: MyTheme.black, width: 1.0),
        ),
      ),
    ),
  );
}

userList() {
  return RawScrollbar(
    thumbColor: MyTheme.primaryBlue,
    thickness: 5.0,
    radius: Radius.circular(10),
    thumbVisibility: true,
    trackVisibility: true,
    padding: EdgeInsets.only(bottom: 7),
    child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Helper.goToPrev();
            },
            title: Text(
              'Johne Deo',
              style: MyStyle.regular4().s14,
            ),
            subtitle: Text(
              'Department name (user ID)',
              style: MyStyle.regular4().s12,
            ),
            leading: const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(MyImages.logo),
            ),
            visualDensity: const VisualDensity(horizontal: -4, vertical: -1),
          );
        }),
  );
}
