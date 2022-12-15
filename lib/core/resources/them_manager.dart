import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/resources/styles_manager.dart';

import '../font_manager.dart';
import '../values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primary,
    primaryColorDark: ColorManager.grey,
    disabledColor: ColorManager.blackColor,
    splashColor: ColorManager.lightGrey,
    cardTheme: CardTheme(
        color: ColorManager.grey,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),
    appBarTheme: AppBarTheme(
      color: ColorManager.primary,
      centerTitle: true,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primary,
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: Colors.black),
    ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.primary,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.grey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle:
              getRegularStyle(color: Colors.white, fontSize: FontSize.s17),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          )),
    ),
    textTheme: TextTheme(
      displayLarge:
          getSemiboldStyle(color: ColorManager.primary, fontSize: FontSize.s16),
      headlineLarge:
          getSemiboldStyle(color: ColorManager.primary, fontSize: FontSize.s16),
      titleMedium:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s16),
      headlineMedium:
          getRegularStyle(color: ColorManager.primary, fontSize: FontSize.s14),
      bodyLarge: getRegularStyle(
        color: ColorManager.grey,
      ),
      bodySmall: getRegularStyle(color: ColorManager.grey),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: Colors.red),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
