
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../utill/dimensions.dart';
import '../../../utill/images.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(AssetImages.noInternetImage, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 2,),
          Text("noInternetImage".tr, textAlign: TextAlign.center , style: const TextStyle(fontSize: Dimensions.fontSizeOverLarge),),
        ],
      ),
    );
  }
}