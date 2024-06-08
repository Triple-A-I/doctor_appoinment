import '../theme/colors.dart';
import '../theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? inputHintStyle;
  final String hintText;
  final bool? isObsecureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.inputHintStyle,
    required this.hintText,
    this.isObsecureText,
    this.suffixIcon,
    this.fillColor,
    this.controller,
    required this.validator,
    this.errorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        fillColor: fillColor ?? ColorsManager.moreLightGray,
        filled: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              vertical: 20.h,
              horizontal: 18.w,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.mainBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.lighterGray,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        errorBorder: errorBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.error,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        focusedErrorBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.error,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        hintStyle: inputHintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObsecureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      validator: (value) {
        validator(value);
      },
    );
  }
}
