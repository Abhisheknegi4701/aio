import 'package:flutter/material.dart';

import '../../helper/responsive_helper.dart';
import '../../utill/color_resources.dart';
import '../../utill/dimensions.dart';

void showCustomSnackBar(String message, BuildContext context,
    {bool isError = true}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  final width = MediaQuery.of(context).size.width;
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        key: UniqueKey(),
        content: Text(
          message,
          style: TextStyle(color: ColorResources.getBlackColor(context)),
        ),
        margin: ResponsiveHelper.isDesktop(context)
            ? EdgeInsets.only(
                right: width * 0.75,
                bottom: Dimensions.paddingSizeLarge,
                left: Dimensions.paddingSizeExtraSmall,
              )
            : const EdgeInsets.all(Dimensions.paddingSizeSmall),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.down,
        backgroundColor: isError ? Colors.red : Colors.green));
}
