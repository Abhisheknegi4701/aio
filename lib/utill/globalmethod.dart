import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helper/responsive_helper.dart';
import 'app_constants.dart';
import 'color_resources.dart';
import 'images.dart';

sendTo(BuildContext context, Widget widget) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
}

sendToForever(BuildContext context, Widget widget) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget), (route) => false);
}

enum MenuItemType { permission }

class DefaultTextboxFormat {
  static List<TextInputFormatter> formatter = [
    FilteringTextInputFormatter.digitsOnly,
    FilteringTextInputFormatter.allow(
        RegExp(r"(^100([.]0{1,2})?)$|(^\d{1,2}([.]\d{1,2})?)$")),
  ];
  static TextInputFormatter formatterWithDecimal =
      FilteringTextInputFormatter.allow(
          RegExp(r"^(([0-9]{0,3})(\.[0-9]{1,2})?)$"));
}

getMenuItemString(MenuItemType menuItemType) {
  switch (menuItemType) {
    case MenuItemType.permission:
      return MenuItemType.permission;
  }
}

// Future<InitializationStatus> _initGoogleMobileAds() {
//   return MobileAds.instance.initialize();
// }

errorDialog(BuildContext context, String error) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 10,
              right: 10,
            ),
            margin: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              color: ColorResources.getBlackColor(context),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    "error".tr,
                    style: TextStyle(
                      color: ColorResources.getWhiteColor(context),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      error,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorResources.getWhiteColor(context),
                        fontSize: ResponsiveHelper.isMobile(context) ? 16 : 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(); // To close the dialog
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorResources.getOrderColor(context)),
                          child: Center(
                              child: Text(
                            "Ok".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorResources.getBlackColor(context)),
                          ))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

class DecimalTextInputFormatter extends TextInputFormatter {
  DecimalTextInputFormatter(
      {this.decimalRange = 2, this.isPercentage = false, this.length = 1})
      : assert(decimalRange == null || decimalRange > 0);

  final int? decimalRange;
  final bool isPercentage;
  final int length;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, // unused.
    TextEditingValue newValue,
  ) {
    TextSelection newSelection = newValue.selection;
    String truncated = newValue.text;

    if (!isPercentage && decimalRange != null) {
      String value = newValue.text;
      if (value.contains(".") &&
          value.substring(value.indexOf(".") + 1).length > decimalRange!) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      } else if (value.contains('.') && value.split('.').length > 2) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      } else if (!value.contains('.') && value.length > length) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      } else if (value == ".") {
        truncated = "0.";

        newSelection = newValue.selection.copyWith(
          baseOffset: math.min(truncated.length, truncated.length + 1),
          extentOffset: math.min(truncated.length, truncated.length + 1),
        );
      }

      return TextEditingValue(
        text: truncated,
        selection: newSelection,
        composing: TextRange.empty,
      );
    }
    if (isPercentage && decimalRange != null) {
      String value = newValue.text;
      //RegExp regExp = RegExp(r"(^100([.]0{1,2})?)$|(^\d{1,2}([.]\d{1,2})?)$");
      if (value.contains(".") &&
          value.substring(value.indexOf(".") + 1).length > decimalRange!) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      } else if (value.contains('.') && value.split('.').length > 2) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      } else if (!value.contains('.') && value.length > 6) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      } else if (!value.contains('.') && int.parse(value) > 100) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      } else if (value == ".") {
        truncated = "0.";

        newSelection = newValue.selection.copyWith(
          baseOffset: math.min(truncated.length, truncated.length + 1),
          extentOffset: math.min(truncated.length, truncated.length + 1),
        );
      }
      return TextEditingValue(
        text: truncated,
        selection: newSelection,
        composing: TextRange.empty,
      );
    }
    return newValue;
  }
}

showPrint(String title, dynamic message) {
  print("$title  =>=>   $message");
}

showToast(String message) {
  Fluttertoast.showToast(
      backgroundColor: Colors.white,
      textColor: Colors.black,
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER);
}

/*void notification(String title, String subtitle)async{
  var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      '1', 'IADA',
      importance: Importance.max, priority: Priority.high);
  var iOSPlatformChannelSpecifics = const IOSNotificationDetails(presentAlert:
  true, presentSound: true);
  var platformChannelSpecifics = NotificationDetails(android:
  androidPlatformChannelSpecifics, iOS: iOSPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
    0, title, subtitle,platformChannelSpecifics, payload: 'Default_Sound',
  );
}*/

bool isValidEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool isValidPassword(String password) {
  return RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#&*~]).{8,}$")
      .hasMatch(password);
}

bool isValidMobile(String mobile) {
  return RegExp(r"^[0-9]{10}$").hasMatch(mobile);
}

validateFields(String val, String hint, String error) {
  if (val.isEmpty) {
    return error;
  } else {
    if (hint == "email".tr || hint == "alternateEmail".tr) {
      if (!isValidEmail(val)) {
        return "errorEmailFormat".tr;
      }
    }
    if (hint == "password".tr ||
        hint == "newPassword".tr ||
        hint == "oldPassword".tr) {
      if (!isValidPassword(val)) {
        return "passwordStrongError".tr;
      }
    }
    if (hint == "mobilenumberhint".tr || hint == "alternateNumber".tr) {
      if (!isValidMobile(val)) {
        return "mobileNumberCorrectFormat".tr;
      } else {
        return null;
      }
    }
  }
}

validateRenewPrice(String val) {
  if (val.isEmpty) {
    return "priceError".tr;
  } else if ((int.parse(val) % 1100) != 0) {
    return "price2Error".tr;
  } else {
    return null;
  }
}

validateOTPFields(String val, String error, String previousValue) {
  if (val.isEmpty) {
    return error;
  } else if (val.length != 4) {
    return "otpError".tr;
  } else if (val != previousValue) {
    return "otpCorrectError".tr;
  } else {
    return "";
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class ShowImage extends StatelessWidget {
  final String imageUrl;
  final String imageType;
  final String from;
  final String forEmail;
  const ShowImage(
      {super.key,
      required this.imageUrl,
      required this.imageType,
      required this.from,
      required this.forEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: InteractiveViewer(
          panEnabled: true,
          boundaryMargin: const EdgeInsets.all(0),
          minScale: 0.5,
          maxScale: 10,
          child: Center(
            child: imageType == AppConstants.memoryType
                ? Image.memory(base64Decode(imageUrl))
                : Image.network(
                    imageUrl,
                    errorBuilder: (context, exception, stackTrace) {
                      return Image.asset(AssetImages.placeholder(context));
                    },
                  ),
          ),
        ),
      ),
    );
  }
}

launchURL(String url) async {
  if (Platform.isIOS) {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    }
  } else {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}

String getUnitFromName(String name) {
  RegExp regex = RegExp(r'\[(.*?)\]');
  Match? match = regex.firstMatch(name);

  if (match != null) {
    String result = match.group(1) ?? '';
    if (result == "deg") {
      return "\u00B0";
    } else {
      return result;
    }
  } else {
    return "";
  }
}

Map<String, int> findMinMaxTemp(
    List<Map<String, int>> data, String key, int startIndex, int endIndex) {
  // Ensure indices are within bounds
  startIndex = startIndex.clamp(0, data.length - 1);
  endIndex = endIndex.clamp(0, data.length - 1);

  // Extract the values for the specified range
  List<int> values = data
      .sublist(startIndex, endIndex + 1)
      .map((item) => item[key] ?? 0)
      .toList();

  // Find min and max
  int minValue = values.reduce((a, b) => a < b ? a : b);
  int maxValue = values.reduce((a, b) => a > b ? a : b);

  return {"min": minValue, "max": maxValue};
}

bool isToday(DateTime dateTime) {
  final now = DateTime.now();
  return dateTime.year == now.year &&
      dateTime.month == now.month &&
      dateTime.day == now.day;
}

textSize(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.portrait) {
    return MediaQuery.of(context).size.width * 0.045;
  } else {
    return MediaQuery.of(context).size.width * 0.03;
  }
}

getMessage(String message, int length) {
  if (message.length > length) {
    return "${message.substring(0, length)}...";
  } else {
    return message;
  }
}

mediumTextSize(BuildContext context) {
  if (MediaQuery.of(context).orientation == Orientation.portrait) {
    return MediaQuery.of(context).size.width * 0.035;
  } else {
    return MediaQuery.of(context).size.width * 0.025;
  }
}

String convertContentToValue(String content) {
  final lowerContent = content.toLowerCase();
  final regex = RegExp(r'(soil moisture|soil temperature)\s*(\d+)');
  final match = regex.firstMatch(lowerContent);

  if (match != null) {
    final type = match.group(1); // "soil moisture" or "soil temperature"
    final number = match.group(2); // Extract the number
    if (type != null && number != null) {
      if (type.contains("moisture")) {
        return "SM $number";
      } else if (type.contains("temperature")) {
        return "ST $number";
      }
    }
  }
  return content;
}

bool isSameDate(DateTime date1, DateTime date2) {
  return date1.year == date2.year &&
      date1.month == date2.month &&
      date1.day == date2.day;
}
