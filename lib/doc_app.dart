import 'package:doctor_appoinment/features/localization/logic/cubit/locale_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/localization/app_localizations.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theme/colors.dart';
import 'features/localization/logic/cubit/locale_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DocApp extends StatelessWidget {
  final AppRouter approuter;

  const DocApp({super.key, required this.approuter});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocaleCubit()..getSavedLanguage(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return BlocBuilder<LocaleCubit, ChangeLocaleState>(
            builder: (context, state) {
              return MaterialApp(
                locale: state.locale,
                supportedLocales: const [Locale('en'), Locale('ar')],
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate
                ],
                localeResolutionCallback: (deviceLocale, supportedLocales) {
                  for (var locale in supportedLocales) {
                    if (deviceLocale != null &&
                        deviceLocale.languageCode == locale.languageCode) {
                      return deviceLocale;
                    }
                  }

                  return supportedLocales.first;
                },
                initialRoute: Routes.settingsScreen,
                onGenerateRoute: approuter.generateRoute,
                theme: ThemeData(
                  primaryColor: ColorsManager.mainBlue,
                  scaffoldBackgroundColor: Colors.white,
                ),
                debugShowCheckedModeBanner: false,
              );
            },
          );
        },
      ),
    );
  }
}
