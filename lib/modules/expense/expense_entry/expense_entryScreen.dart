import 'package:field_service/modules/expense/expenseModel.dart';
import 'package:field_service/modules/expense/expense_entry/expense_entryMob.dart';
import 'package:field_service/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class ExpenseEntryScreen extends StatelessWidget {
  static const String route = '/expenseentryScreen';
  const ExpenseEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBlueLayout<ExpenseModel>(
        desktopBody: const ExpenseEntryMobileBody(),
        mobileBody: const ExpenseEntryMobileBody());
  }
}