import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/extension.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  await checkIfLoggedInUser();
  runApp(
    DocApp(approuter: AppRouter()),
  );
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
