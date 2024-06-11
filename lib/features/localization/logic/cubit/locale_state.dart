import 'package:flutter/material.dart';
// part of 'locale_cubit.dart';

class ChangeLocaleState {
  final Locale locale;
  ChangeLocaleState({required this.locale});
}

class Loaded extends ChangeLocaleState {
  Loaded({required Locale locale}) : super(locale: locale);
}

class Loading extends ChangeLocaleState {
  Loading() : super(locale: Locale('en'));
}

class Error extends ChangeLocaleState {
  final String message;
  Error({required this.message}) : super(locale: Locale('en'));
}
