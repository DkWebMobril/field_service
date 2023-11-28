import 'package:field_service/modules/expense/expenseModel.dart';
import 'package:field_service/modules/expense/expense_mobileBody.dart';
import 'package:field_service/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatelessWidget {
  static const String route = '/expenseScreen';
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBlueLayout<ExpenseModel>(
        desktopBody: const ExpenseMobileBody(),
        mobileBody: const ExpenseMobileBody());
  }
}