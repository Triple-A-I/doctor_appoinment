import 'package:doctor_appoinment/core/routing/app_router.dart';
import 'package:doctor_appoinment/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/theme/colors.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorsManager.darkBlue,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.green));
  runApp(DocApp(
    approuter: AppRouter(),
  ));
}
