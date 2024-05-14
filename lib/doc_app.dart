import 'package:doctor_appoinment/core/routing/app_router.dart';
import 'package:doctor_appoinment/core/routing/routes.dart';
import 'package:doctor_appoinment/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter approuter;
  const DocApp({super.key, required this.approuter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Circles",
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: approuter.generateRoute,
      ),
    );
  }
}
