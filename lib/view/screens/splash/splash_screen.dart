import 'dart:async';

import 'package:allinoneapp/helper/route_helper.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utill/color_resources.dart';
import '../../../utill/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final GlobalKey<ScaffoldMessengerState> _globalKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    checkConnectivity();
  }

  checkConnectivity() async {
    final nowResult = await (Connectivity().checkConnectivity());
    if (nowResult.contains(ConnectivityResult.none)) {
      if (mounted) {
        const SizedBox();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 6000),
          content: Text(
            'no_connection'.tr,
            textAlign: TextAlign.center,
          ),
        ));
      }
    } else {
      if (mounted) {
        _route();
      }
    }
  }

  Future<void> _route() async {
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushNamed(context, RouteHelper.home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: ColorResources.getBackgroundColor(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetImages.appLogo,
              width: MediaQuery.of(context).size.width, height: 200),
        ],
      ),
    );
  }
}
