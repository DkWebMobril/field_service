
import 'package:field_service/utils/essentials.dart';
import 'package:field_service/myApp.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


final navigatorkey = GlobalKey<NavigatorState>();


void main() async{
   WidgetsFlutterBinding.ensureInitialized(); 
  await EasyLocalization.ensureInitialized();
  await LocalStorage.init();
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then(
    (_) {
      runApp(
        EasyLocalization(
          supportedLocales: const [Locale('en', 'US'), Locale('sv', 'SE')],
          path: 'assets/l10n',
          useOnlyLangCode: true,
          fallbackLocale: const Locale('en', 'US'),
          child: const MyApp(),
        ),
      );
    },
  ); 
} 

