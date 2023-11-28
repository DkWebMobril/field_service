import 'package:field_service/data/local_storage.dart';
import 'package:field_service/modules/server_setup/server_screen/server_screen.dart';
import 'package:field_service/utils/colors.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  static const String route = "/splashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool hideUi = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () => {
        Helper.goToRemoveUntil(ServerScreen.route),
        // checkLogin(),
      },
    );
  }

  checkLogin() async {
    try {
      String? token = LocalStorage.prefs.getString('token');
      bool? loginActive = LocalStorage.prefs.getBool('activate');

      if (loginActive == true && loginActive != null) {
        if (token != null) {
          // ApiClient.token = token;
          // await BackGroundImage.getImage();
          // Helper.goToRemoveUntil(
          //   HomeScreen.route,
          // );
          // log("checkLogin $token ");
        } else {
          // Helper.goToRemoveUntil(LoginScreen.route);
        }
      } else {
        // Helper.goToRemoveUntil(OnBoardingPage.route);
      }
    } on Exception {
      // Helper.goToRemoveUntil(RegisterScreen.route);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: MyTheme.primaryBlue),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    MyImages.splash,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: currentSize.height * 0.1,
                ),
                Image.asset(
                  MyImages.logo,
                  // height: 40,
                  color: MyTheme.white,
                  height: currentSize.height * 0.05,
                  // width: 16.w,
                  // fit: BoxFit.cover,
                ),
                SizedBox(
                  height: currentSize.height * 0.7,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1,
                      bottom: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: Image.asset(
                      MyImages.logo1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      // height: 40,
                      color: MyTheme.white,
                      // fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
