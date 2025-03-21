import 'package:allinoneapp/helper/responsive_helper.dart';
import 'package:allinoneapp/utill/images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/route_helper.dart';
import '../../utill/color_resources.dart';
import '../../utill/dimensions.dart';

class Footer extends StatefulWidget {
  final int show;
  const Footer({super.key, required this.show});

  @override
  FooterWidgetState createState() => FooterWidgetState();
}

class FooterWidgetState extends State<Footer> {
  _buildButton() {
    return Center(
      child: GestureDetector(
        onTap: () async {
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: ResponsiveHelper.isMobile(context) ? 25 : 30,
                width: ResponsiveHelper.isMobile(context) ? 25 : 30,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetImages.homeIcon),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "returnHomePage".tr,
                maxLines: 1,
                style: TextStyle(
                  // fontFamily: 'Metropolis-Bold',
                  color: Colors.white,
                  fontSize: ResponsiveHelper.isMobile(context)
                      ? Dimensions.fontSizeExtraLarge
                      : Dimensions.fontSizeExtraLarge,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: ResponsiveHelper.isMobile(context) ? 25 : 30,
                width: ResponsiveHelper.isMobile(context) ? 25 : 30,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetImages.backArrow),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(child: OrientationBuilder(builder: (context, orientation) {
        return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                if (widget.show == 1) _buildButton(),
                const SizedBox(
                  height: 10,
                ),
                // Center(
                //   child: Center(
                //     child: Container(
                //       height: 70,
                //       margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                //       width: ResponsiveHelper.isMobile(context) ?MediaQuery.of(context).size.width : MediaQuery.of(context).size.width / 2,
                //       decoration: BoxDecoration(
                //         color: Provider.of<ThemeProvider>(context, listen: true).darkTheme == AppConstants.themeDark ? Colors.white : Colors.transparent,
                //         image: const DecorationImage(
                //           fit: BoxFit.fill,
                //           image: AssetImage(
                //               AssetImages.watermark),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 15,
                // ),
                Container(
                  color: Colors.transparent,
                  width: double.maxFinite,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'termsAndConditions1'.tr,
                              style: TextStyle(
                                  color: ColorResources.getBlackColor(context),
                                  fontSize: Dimensions.fontSizeSmall)),
                          TextSpan(
                              text: 'termsAndConditions2'.tr,
                              style: TextStyle(
                                  color: ColorResources.getBlackColor(context),
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.fontSizeSmall),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(
                                      context, RouteHelper.privacy);
                                }),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ));
      })),
    );
  }
}
