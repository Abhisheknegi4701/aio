import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../helper/route_helper.dart';
import '../../../provider/theme_provider.dart';
import '../../../utill/app_constants.dart';
import '../../../utill/color_resources.dart';
import '../../../utill/dimensions.dart';
import '../../../utill/styles.dart';
import '../../base/footer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    // final authProvider = Provider.of<AuthsProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        //title: Text(animeProvider.animeDetail.title!.english!),// You can add title here
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
              color: ColorResources.getBlackColor(context)),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent, //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SwitchListTile(
                value: Provider.of<ThemeProvider>(context).darkTheme ==
                    AppConstants.themeDark,
                onChanged: (bool isActive) =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(isActive
                            ? AppConstants.themeDark
                            : AppConstants.themeLight),
                title: Text('dark_theme'.tr,
                    style: poppinsRegular.copyWith(
                        fontSize: Dimensions.fontSizeLarge)),
              ),
              ListTile(
                onTap: () async {
                  Navigator.pushNamed(context, RouteHelper.chooseLanguage,
                      arguments: AppConstants.setting);
                },
                leading: Icon(Icons.language_outlined,
                    size: 25, color: Theme.of(context).colorScheme.error),
                title: Text(
                  'chooseLanguage'.tr,
                  style: poppinsRegular.copyWith(
                    fontSize: Dimensions.fontSizeLarge,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, RouteHelper.about);
                },
                leading: Icon(Icons.account_box_outlined,
                    size: 25, color: Theme.of(context).colorScheme.error),
                title: Text(
                  'about_us'.tr,
                  style: poppinsRegular.copyWith(
                    fontSize: Dimensions.fontSizeLarge,
                  ),
                ),
              ),
              // if (authProvider.isLoggedIn())
              //   ListTile(
              //     onTap: () {
              //       showAnimatedDialog(
              //         context,
              //         AccountDeleteDialog(
              //           icon: Icons.delete_forever,
              //           title: 'are_you_sure_to_delete_account'.tr,
              //           description: 'it_will_remove_your_all_information'.tr,
              //           onTapFalseText: 'no'.tr,
              //           onTapTrueText: 'yes'.tr,
              //           isFailed: true,
              //           onTapFalse: () => Navigator.of(context).pop(),
              //           onTapTrue: () {
              //             Provider.of<AuthsProvider>(context, listen: false)
              //                 .deleteUser(context);
              //             Navigator.of(context).pushNamedAndRemoveUntil(
              //                 RouteHelper.splash, (route) => false);
              //           },
              //         ),
              //         dismissible: false,
              //         isFlip: true,
              //       );
              //     },
              //     leading: Icon(Icons.delete,
              //         size: 25, color: Theme.of(context).colorScheme.error),
              //     title: Text(
              //       'delete_account'.tr,
              //       style: poppinsRegular.copyWith(
              //         fontSize: Dimensions.fontSizeLarge,
              //       ),
              //     ),
              //   ),
              // if (authProvider.isLoggedIn())
              //   ListTile(
              //     onTap: () {
              //       authProvider.logOutProcess(context);
              //     },
              //     leading: Icon(Icons.logout,
              //         size: 25, color: Theme.of(context).colorScheme.error),
              //     title: Text(
              //       'log_out'.tr,
              //       style: poppinsRegular.copyWith(
              //         fontSize: Dimensions.fontSizeLarge,
              //       ),
              //     ),
              //   ),
              const SizedBox(
                height: 50,
              ),
              const Footer(show: 2),
            ],
          ),
        ),
      ),
    );
  }
}
