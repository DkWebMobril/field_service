 

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; 

// class ShowInternetScreen extends StatefulWidget {
//   static const String route = '/showInternetScreen';
//   const ShowInternetScreen({super.key});

//   @override
//   State<ShowInternetScreen> createState() => _ShowInternetScreenState();
// }

// class _ShowInternetScreenState extends State<ShowInternetScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: SystemUiOverlayStyle.light
//           .copyWith(statusBarColor: MyTheme.primaryDark),
//       child: SafeArea(
//         child: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: const BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage(
//                     MyImages.bgImage,
//                   ),
//                   fit: BoxFit.cover)),
//           child: Scaffold(
//             backgroundColor: Colors.transparent.withOpacity(0.01),
//             body: WillPopScope(
//               onWillPop: onDefaultBackPressed,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     MyImages.intImg,
//                     height: 140,
//                     width: 140,
//                   ),
//                   SizedBox(
//                     height: 2.h,
//                   ),
//                   Text(
//                     'internet'.tr(),
//                     style: MyStyle.medium5().s18,
//                     textAlign: TextAlign.center,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 12.0, vertical: 10),
//                     child: Text(
//                       'internetCheck'.tr(),
//                       style: MyStyle.regular4().s14,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   CommonAletButton(
//                       colors: MyTheme.primaryDark,
//                       height: 40,
//                       txtcolors: MyTheme.white,
//                       width: 250,
//                       onPressed: () async {
//                         bool statusEv =
//                             ConnectivityService.onStatusChanged.value;  
//                         if (statusEv == true) {
//                           Helper.goToPrev();
//                         }
                         
//                       },
//                       title: 'Retry'.tr())
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
