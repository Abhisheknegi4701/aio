import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';
import 'app_constants.dart';

class ColorResources {
  static Color getGreyColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFb2b8bd)
        : const Color(0xFFE4EAEF);
  }

  static Color getProfileMenuHeaderColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? footerColor.withOpacity(0.5)
        : footerColor;
  }

  static Color getTimeColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFFFFFFF)
        : const Color(0xFFE4EAEF);
  }

  static Color getDarkColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF4d5054)
        : const Color(0xFF25282B);
  }

  static Color getCardBgColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF3c3c3c) /*Color(0xFFFFFFFF).withOpacity(0.05)*/
        : const Color(0xFFFFFFFF);
  }

  static Color getWhiteColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF000000)
        : const Color(0xFFFFFFFF);
  }

  static Color getChatTimeBackGroundColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF000000)
        : const Color(0xFFB9B9B9);
  }

  static Color getBlackColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF000000);
  }

  static Color getTryBgColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF011201)
        : const Color(0xFFecfbec);
  }

  static Color getTextColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFFFFFFF).withOpacity(0.6)
        : const Color(0xFF1F1F1F);
  }

  static Color getProductDescriptionColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF1F1F1F);
  }

  static Color getFooterTextColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF515755);
  }

  static Color getHintColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF98a1ab)
        : const Color(0xFF7A7A7A);
  }

  static Color getBackgroundColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF4d5054)
        : const Color(0xFFFAFAFA);
  }

  static Color getGreyLightColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFb2b8bd)
        : const Color(0xFF98a1ab);
  }

  static Color getYellow(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF916129)
        : const Color(0xFFFFAA47);
  }

  static Color getGreen(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF167d3c)
        : const Color(0xFF23CB60);
  }

  static Color getCategoryBgColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFFFFFFF)
        : const Color(0xFFb2b8bd);
  }

  static Color getOrderColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF4d5054)
        : const Color(0xFFE4EAEF).withOpacity(0.9);
  }

  static Color getAppBarHeaderColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF5c746c)
        : const Color(0xFFEDF4F2);
  }

  static Color getChatAdminColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFa1916c)
        : const Color(0xFFFFDDD9);
  }

  static Color getSearchBg(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFF585a5c)
        : const Color(0xFFF4F7FC);
  }

  static Color appColorTheme(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFe60f0f)
        : const Color(0xFFe60f0f);
  }

  static Color languageSelectedColor(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: false).darkTheme ==
            AppConstants.themeDark
        ? const Color(0xFFA7A7A7)
        : const Color(0xFFA7CAEF);
  }

  static const Color borderColor = Color(0xFFDCDCDC);
  static const Color searchBg = Color(0xFFF4F7FC);
  static const Color redColor = Color(0xFFE5917E);
  static const Color blackColor = Color(0xFF000000);
  static const Color cardShadowColor = Color(0xFFA7A7A7);
  static const Color footerColor = Color(0xFFFFDDD9);
  static const Color disableColor = Color(0xFF5A5A5A);
  static const Color whiteColor = Color(0xFFFFFFFF);
}
