import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utill/color_resources.dart';
import '../../../utill/dimensions.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                    color: ColorResources.getWhiteColor(context),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: ColorResources.getBlackColor(context))),
                child: Icon(
                  Icons.arrow_back,
                  color: ColorResources.getBlackColor(context),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorResources.getWhiteColor(context),
              ),
              child: Text(
                "about_us_Head".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    fontStyle: FontStyle.italic,
                    color: ColorResources.getBlackColor(context),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "about_usD1".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: Dimensions.fontSizeLarge,
                          color: ColorResources.getBlackColor(context),
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "about_usD2".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: Dimensions.fontSizeLarge,
                          color: ColorResources.getBlackColor(context),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            )
            // authProvider.about.about.isNotEmpty? ListView.builder(
            //   physics: const NeverScrollableScrollPhysics(),
            //     shrinkWrap: true,
            //     itemCount: authProvider.about.about.length,
            //     itemBuilder: (context, index){
            //       return Container(
            //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            //         margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: ColorResources.getWhiteColor(context),
            //             boxShadow: const [BoxShadow(
            //               color: Colors.grey,
            //               blurRadius: 5.0,
            //             ),]
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Text("${index == 0 ? authProvider.about.about[index].title : "$index. ${authProvider.about.about[index].title}"}",
            //               style: TextStyle(fontSize: Dimensions.fontSizeExtraLarge,
            //                   color: ColorResources.getBlackColor(context),
            //                   fontWeight: FontWeight.bold),
            //             ),
            //             const SizedBox(height: 15,),
            //             Text(authProvider.about.about[index].description ?? "",
            //               style: TextStyle(fontSize: Dimensions.fontSizeLarge,
            //                   color: ColorResources.getBlackColor(context),
            //                   fontWeight: FontWeight.w400),
            //             ),
            //           ],
            //         ) ,
            //       );
            //     }
            // ) : Container(),
          ],
        )),
      ),
    );
  }
}
