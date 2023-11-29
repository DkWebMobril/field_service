import 'package:field_service/modules/chat/chatModel.dart';
import 'package:field_service/modules/chat/chat_screen.dart';
import 'package:field_service/modules/expense/expenseModel.dart'; 
import 'package:field_service/modules/expense/expense_entry/expense_entryScreen.dart';
import 'package:field_service/modules/expense/expense_screen.dart';
import 'package:field_service/modules/home/dashboard.dart';
import 'package:field_service/modules/home/home_screen/homeModel.dart';
import 'package:field_service/modules/home/home_screen/home_screen.dart';
import 'package:field_service/modules/otp_module/otp_model.dart';
import 'package:field_service/modules/otp_module/otp_screen.dart';
import 'package:field_service/modules/profile/profileModel.dart';
import 'package:field_service/modules/profile/profile_screen.dart';
import 'package:field_service/modules/server_setup/choose_startup/startupModel.dart';
import 'package:field_service/modules/server_setup/choose_startup/startup_screen.dart';
import 'package:field_service/modules/server_setup/server_screen/serverModel.dart';
import 'package:field_service/modules/server_setup/server_screen/server_screen.dart';
import 'package:field_service/modules/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RouteHelper {
  static Map<String, WidgetBuilder> createRoutes() {
    return {
      SplashScreen.route: (_) => const SplashScreen(),
      // ShowInternetScreen.route: (_) => const ShowInternetScreen(),

      ServerScreen.route: (_) => ChangeNotifierProvider(
            create: (_) => ServerModel(),
            child: const ServerScreen(),
          ),
      StartupScreen.route: (_) => ChangeNotifierProvider(
            create: (_) => StartUpSetModel(),
            child: const StartupScreen(),
          ),
      OTPScreen.route: (_) => ChangeNotifierProvider(
            create: (_) => OTPModel(),
            child: const OTPScreen(),
          ),
      ExpenseEntryScreen.route: (_) => ChangeNotifierProvider(
            create: (_) => ExpenseModel(),
            child: const ExpenseEntryScreen(),
        ),
      // ProfileScreen.route: (_) => ChangeNotifierProvider(
      //       create: (_) => ProfileModel(),
      //       child: const ProfileScreen(),
      //   ),

      DashboardScreen.route: (_) => MultiProvider(
            providers: [
              ChangeNotifierProvider(
                  create: (_) => HomeModel(), child: const HomeScreen()),
              ChangeNotifierProvider(
                  create: (_) => ProfileModel(), child: const ProfileScreen()),
              ChangeNotifierProvider(
                  create: (_) => ChatModel(), child: const ChatScreen()),
              ChangeNotifierProvider(
                  create: (_) => ExpenseModel(), child: const ExpenseScreen()),
              ChangeNotifierProvider(
                  create: (_) => ProfileModel(), child: const ProfileScreen()),
            ],
            child: const DashboardScreen(indexGet: 0),
          ),
    };
  }

  static Route onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text("Unknown"),
          centerTitle: true,
        ),
        body: Center(
          child: Text('${settings.name!.split('/')[1]} Comming soon..'),
        ),
      ),
    );
  }
}
