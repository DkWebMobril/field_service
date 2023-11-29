import 'package:field_service/modules/chat/chat_screen.dart';
import 'package:field_service/modules/expense/expense_entry/expense_entryScreen.dart';
import 'package:field_service/modules/expense/expense_screen.dart';
import 'package:field_service/modules/home/dashboard_widget.dart';
import 'package:field_service/modules/home/home_screen/home_screen.dart';
import 'package:field_service/modules/profile/profile_screen.dart';
import 'package:field_service/utils/colors.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  static const String route = '/dashboard';
  final int indexGet;
  const DashboardScreen({required this.indexGet});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedIndex = widget.indexGet;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ExpenseEntryScreen(),
    const ChatScreen(),
    const ExpenseScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.bgColor,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomMyBottomNavigationBar(
        indexGet: _selectedIndex,
        items: [
          CustomMyBottomNavigationBarItem(
            icon: MyImages.bottomIcon1,
          ),
          CustomMyBottomNavigationBarItem(
            icon: MyImages.bottomIcon2,
          ),
          CustomMyBottomNavigationBarItem(
            icon: MyImages.bottomIcon3,
          ),
          CustomMyBottomNavigationBarItem(
            icon: MyImages.bottomIcon4,
          ),
          CustomMyBottomNavigationBarItem(
            icon: MyImages.bottomIcon5,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
