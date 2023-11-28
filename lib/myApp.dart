import 'package:field_service/utils/essentials.dart';
import 'package:field_service/main.dart';
import 'package:field_service/routes.dart';
import 'package:field_service/modules/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    // Constatnts.streamSubscription?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // navigatorObservers: [ChuckerFlutter.navigatorObserver],
        debugShowCheckedModeBanner: false,
        title: 'FieldService',
        theme: ThemeData(
          fontFamily: "Inter",
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.transparent, 
            selectionHandleColor: Colors.transparent,
          ),
          // primarySwatch: Colors.purple,
          scaffoldBackgroundColor: Colors.white,
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        navigatorKey: navigatorkey,
        routes: RouteHelper.createRoutes(),
        //  onGenerateRoute: (settings) => RouteHelper.onGenerateRoute(settings),
        onUnknownRoute: (settings) => RouteHelper.onUnknownRoute(settings),
        initialRoute: initialRoute(),
  
    );
  }

  String initialRoute() {
    return SplashScreen.route;
  }
}
