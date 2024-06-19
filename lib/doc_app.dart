import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theme/colors.dart';
import 'core/helpers/constants.dart';

class DocApp extends StatelessWidget {
  final AppRouter approuter;

  const DocApp({super.key, required this.approuter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          initialRoute:
              isLoggedInUser ? Routes.homeScreen : Routes.onBoardingScreen,
          onGenerateRoute: approuter.generateRoute,
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
