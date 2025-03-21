import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../helper/route_helper.dart';
import '../../../utill/app_constants.dart';
import '../../../utill/color_resources.dart';
import '../../../utill/dimensions.dart';
import '../../../utill/globalmethod.dart';
import '../../../utill/images.dart';

class ChooseLanguage extends StatefulWidget {
  final String from;
  const ChooseLanguage({super.key, required this.from});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  int selectedOption = -1;
  String language = AppConstants.englishLanguage;

  @override
  void initState() {
    super.initState();
    getLanguage();
  }

  getLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    language = sharedPreferences.getString(AppConstants.languageCODE) ??
        AppConstants.englishLanguage;
    selectedOption =
        AppConstants.languageList.indexWhere((element) => element == language);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.getGreyColor(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          SharedPreferences sharedPreferences =
                              await SharedPreferences.getInstance();
                          sharedPreferences.setString(
                              AppConstants.languageCODE, language);
                          sharedPreferences.setString(
                              AppConstants.defaultLanguage, language);
                          var locale = Locale(language);
                          Get.updateLocale(locale);
                          if (widget.from == AppConstants.start) {
                            if (context.mounted) {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  RouteHelper.splash, (route) => false);
                            }
                          } else {
                            if (context.mounted) {
                              Navigator.pop(context);
                            }
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "skip".tr,
                            style: TextStyle(
                                fontSize: Dimensions.fontSizeExtraLarge,
                                color: ColorResources.getBlackColor(context),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AssetImages.multiLanguage,
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          "headingChooseLanguage".tr,
                          style: TextStyle(
                              fontSize: Dimensions.fontSizeExtraLarge,
                              color: ColorResources.getBlackColor(context),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorResources.getWhiteColor(context),
                ),
                height: MediaQuery.of(context).size.height * 0.7,
                child: GridView.builder(
                  itemCount: AppConstants.languageList.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    crossAxisCount: 2,
                    childAspectRatio: 3.2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1,
                              color: ColorResources.getGreyColor(context)),
                          color: selectedOption == index
                              ? ColorResources.languageSelectedColor(context)
                              : ColorResources.getWhiteColor(context),
                          boxShadow: [
                            BoxShadow(
                              color: ColorResources.getGreyColor(context),
                              blurRadius: 7.0,
                            )
                          ]),
                      child: RadioListTile<int>(
                        title: Text(
                          AppConstants.languageList[index].tr,
                          style: TextStyle(
                              color: ColorResources.getBlackColor(context),
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.fontSizeDefault),
                        ),
                        value: index,
                        groupValue: selectedOption,
                        onChanged: (int? value) {
                          setState(() {
                            selectedOption = value!;
                            showPrint("Selected Option:", selectedOption);
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: GestureDetector(
        onTap: () async {
          SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
          language = AppConstants.languageList[selectedOption];
          sharedPreferences.setString(AppConstants.languageCODE,
              AppConstants.languageList[selectedOption]);
          sharedPreferences.setString(AppConstants.defaultLanguage,
              AppConstants.languageList[selectedOption]);
          var locale = Locale(AppConstants.languageList[selectedOption]);
          Get.updateLocale(locale);
          if (widget.from == AppConstants.start) {
            if (context.mounted) {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteHelper.splash, (route) => false);
            }
          } else {
            if (context.mounted) {
              Navigator.pop(context);
            }
          }
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          decoration: BoxDecoration(
              color: ColorResources.getGreen(context),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            "choose".tr,
            style: TextStyle(
                fontSize: Dimensions.fontSizeExtraLarge,
                color: ColorResources.getBlackColor(context),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
