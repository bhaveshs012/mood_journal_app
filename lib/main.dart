import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_journal_app/auth/auth_controller.dart';
import 'package:mood_journal_app/bindings/app_bindings.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/pages/home/home.dart';
import 'package:mood_journal_app/pages/login/login.dart';
import 'package:mood_journal_app/pages/signup/signup.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      home: Sizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            theme: ThemeData(
              fontFamily: 'FunnelSans',
              primaryColor: AppColors.primary,
              scaffoldBackgroundColor: AppColors.background,
            ),
            debugShowCheckedModeBanner: false,
            home: Obx(() {
              return Get.find<AuthController>().currentUser.value == null
                  ? LoginPage()
                  : HomeScreen();
            }),
          );
        },
      ),
    );
  }
}
