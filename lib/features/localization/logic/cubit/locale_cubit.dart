import 'package:bloc/bloc.dart';
import 'package:doctor_appoinment/features/localization/logic/cubit/locale_state.dart';
import 'package:flutter/material.dart';

class LocaleCubit extends Cubit<ChangeLocaleState> {
  LocaleCubit() : super(ChangeLocaleState(locale: const Locale('en')));

  Future<void> getSavedLanguage() async {
    // Simulate fetching from storage
    await Future.delayed(Duration(seconds: 1));
    final savedLocale = Locale('en'); // Replace with actual logic
    emit(ChangeLocaleState(locale: savedLocale));
  }

  Future<void> changeLanguage(String languageCode) async {
    final locale = Locale(languageCode);
    emit(ChangeLocaleState(locale: locale));
  }
}
