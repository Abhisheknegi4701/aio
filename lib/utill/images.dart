import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';
import 'app_constants.dart';

class AssetImages {
  // SVG
  static const String splashImage = 'assets/logo.png';
  static const String maintenance = 'assets/image/maintenance.png';
  static const String privacyPolicy = 'assets/image/privacy_policy.png';
  static const String home = 'assets/image/home.png';
  static const String logOut = 'assets/image/log_out.png';
  static const String notFound = 'assets/image/not_found.png';
  static const String settings = 'assets/image/settings.png';
  static const String aboutUs = 'assets/image/about_us.png';
  static const String privacy = 'assets/image/privacy.png';
  static const String termsAndConditions =
      'assets/image/terms_and_conditions.png';
  static const String login = 'assets/image/login.png';
  static const String support = 'assets/image/support.png';
  static const String faq = 'assets/image/faq.png';
  static const String noInternetImage =
      'assets/images/Home/noInternetConnection1.png';
  static const String multiLanguage = 'assets/images/Home/multiLanguage.png';
  // Image
  static const String appLogo = 'assets/logo.png';
  static const String appTopLogo = 'assets/topmainlogo.png';
  static const String placeholder_light = 'assets/images/Chat/placeholder.png';
  static const String placeholder_dark = 'assets/image/placeholder.jpeg';
  static String placeholder(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: true).darkTheme ==
            AppConstants.themeDark
        ? placeholder_light
        : placeholder_light;
  }

  static const String update = 'assets/image/update.png';
  static const String facebook = 'assets/image/facebook.png';
  static const String twitter = 'assets/image/twitter.png';
  static const String youtube = 'assets/image/youtube.png';
  static const String play_store = 'assets/image/play_store.png';
  static const String app_store = 'assets/image/app_store.png';
  static const String linked_in_icon = 'assets/image/linkedin_icon.png';
  static const String in_sta_gram_icon = 'assets/image/instagram_icon.png';

  static const splashBackground = "assets/images/Intro/background.png";
  static const splashIADALogo = "assets/images/Intro/iada1.png";
  static const dLogo = "assets/images/Intro/dikusai.png";
  static const splashAgroCloudLogo = "assets/images/Intro/agrocloud.png";
  static String loginProfileSelect(BuildContext context) {
    return Provider.of<ThemeProvider>(context, listen: true).darkTheme ==
            AppConstants.themeDark
        ? profileLight
        : profileDark;
  }

  static const profileLight = "assets/images/Login/profile.png";
  static const profileDark = "assets/images/Login/profileDark.png";

  static const profilePlaceholder = "assets/images/Chat/profilePlaceholder.png";

  static const cameraCaptureImage = "assets/images/EditProfile/camera.png";
  static const galleryCaptureImage = "assets/images/EditProfile/gallery.png";
  static const greenBackground =
      "assets/images/EditProfile/greenbackground.png";
  static const alertDialogClose = "assets/images/Login/close.png";
  static const errorAlertDialog = "assets/images/Home/alert.png";
  static const soilAlertIcon = "assets/images/Home/soilAlert.png";
  static const diseaseAlertIcon = "assets/images/Home/diseaseAlert.png";
  static const simAlertIcon = "assets/images/Home/simAlerts.png";
  static const winningCup = "assets/images/Home/cup.png";
  static const person2Image = "assets/images/Home/person2.png";
  static const homeIcon = "assets/images/berita/homeicon.png";
  static const backArrow = "assets/images/berita/backarrow.png";
  static const forwordArrow = "assets/images/berita/next.png";
  static const watermark = "assets/images/Home/watermark.png";
  static const sendButton = "assets/images/Chat/sent.png";
  static const micButton = "assets/images/Chat/mic.png";
  static const cameraButton = "assets/images/Chat/camera.png";
  static const micOffButton = "assets/images/Chat/micoff.png";
  static const adminProfileImage = "assets/images/Chat/admin.png";
  static const upArrow = "assets/images/Ramalan/uparrow.png";
  static const downArrow = "assets/images/Ramalan/downarrow.png";
  static const rightArrow = "assets/images/Home/rightarrow.png";
  static const greenTick = "assets/images/Home/greentick.png";
  static const starbackground = "assets/images/Home/starbackground.png";
  static const attachment = "assets/images/Home/attchment.png";
  static const tick = "assets/images/Home/tick.png";
  static const leftLoginArrow = "assets/images/Login/leftarrow.png";
  static const rightLoginArrow = "assets/images/Login/rightarrow.png";
  static const winningCupFinal = "assets/images/welldone/cup.png";
  static const winningCupFinalBackground =
      "assets/images/welldone/background.png";
  static const profileBackground =
      "assets/images/EditProfile/profilebackground.png";
  static const leftArrow = "assets/images/Home/leftarrow.png";
  //static const placeholder = "assets/images/Chat/placeholder.png";

  static const redSun = "assets/images/Home/redsun.png";
  static const greenSun = "assets/images/Ramalan/greensun.png";
  static const rainCloud = "assets/images/Ramalan/raincloud.png";
  static const rain = "assets/images/Home/rain.png";
  static const redThunderCloud = "assets/images/Ramalan/redthundercloud.png";
  static const sunCloud = "assets/images/Ramalan/suncloud.png";
  static const windSpeed = "assets/images/Home/windSpeed.png";
  static const humidity = "assets/images/Home/humidity.png";

  static const laporanTugasLogo = "assets/images/Home/laporan.png";
  static const beritaTerkiniLogo = "assets/images/Home/Berita.png";
  static const pencapaianPetaniLogo = "assets/images/Home/pencapian.png";
  static const peringtanTugasLogo = "assets/images/Home/peringutan.png";
  static const soilLogo = "assets/images/Home/soilIcon.png";
  static const ramalanCuacaLogo = "assets/images/Home/ramalan.png";
  static const jomBerBualLogo = "assets/images/Home/jom.png";
}
