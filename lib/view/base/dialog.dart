import 'package:allinoneapp/utill/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utill/color_resources.dart';

dialog(BuildContext context, String title, String message, bool payment,
    IconData icons, Color iconColor) {
  showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
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
                  color: ColorResources.getWhiteColor(context),
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
                    mainAxisSize: MainAxisSize.min, // To make the card compact
                    children: <Widget>[
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: Dimensions.fontSizeExtraLarge,
                            fontWeight: FontWeight.w700,
                            color: ColorResources.getBlackColor(context)),
                      ),
                      SizedBox(
                        height: 100.0,
                        child: Icon(
                          icons,
                          color: iconColor,
                          size: 100,
                        ),
                      ),
                      Text(
                        message,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: Dimensions.fontSizeExtraLarge,
                            fontWeight: FontWeight.w700,
                            color: ColorResources.getBlackColor(context)),
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                padding: const EdgeInsets.all(15),
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        ColorResources.appColorTheme(context)),
                                child: Center(
                                    child: Text(
                                  "Ok".tr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorResources.getBlackColor(
                                          context)),
                                ))),
                          ),
                          if (payment)
                            GestureDetector(
                              onTap: () async {},
                              child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  padding: const EdgeInsets.all(15),
                                  margin: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: ColorResources.appColorTheme(
                                          context)),
                                  child: Center(
                                      child: Text(
                                    "pay".tr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.getBlackColor(
                                            context)),
                                  ))),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      });
}
