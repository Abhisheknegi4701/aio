import 'package:get/get.dart';

class AppConstants {
  static const String appName = 'CMS';
  static const double appVersion = 1;
  static const baseUrl = "http://192.168.0.107:3000";
  // static const baseUrl = "http://15.206.75.152:3000";
  static const getConfig = "$baseUrl/user/getConfig";
  /////////////////////Device User API/////////////////////////
  static const checkDetails = "$baseUrl/deviceUser/checkDetails";
  static const userLogin = "$baseUrl/deviceUser/userLogin";
  static const refreshToken = "$baseUrl/deviceUser/refreshToken";
  static const getUserInfo = "$baseUrl/deviceUser/getUserInfo";
  static const getUserAllInfo = "$baseUrl/deviceUser/getUserAllInfo";
  static const getAllUsersRelData = "$baseUrl/deviceUser/getAllUsersRelData";
  static const updateUserImage = "$baseUrl/deviceUser/updateUserImage";
  static const getAllCropDiseaseAlert =
      "$baseUrl/deviceUser/getAllCropDiseaseAlert";
  /////////////////////Device API/////////////////////////////
  static const forecastData = "$baseUrl/device/getForcastData";
  static const getAlerts = "$baseUrl/device/getAllMyAlerts";
  static const updateMyAlerts = "$baseUrl/device/updateMyAlerts";
  static const getDeviceData = "$baseUrl/device/getDeviceData";
  static const getAllDeviceDataForUser =
      "$baseUrl/device/getAllDeviceDataForUser";
  static const getAllDeviceSoilDataRegion =
      "$baseUrl/device/getAllDeviceSoilDataRegion";
  /////////////////////News API/////////////////////////////
  static const getAllNews = "$baseUrl/news/getAllNews";
  /////////////////////Farmer API/////////////////////////////
  static const getFarmerTask = "$baseUrl/farmer/getFarmerTask";
  static const saveTask = "$baseUrl/farmer/updateFarmerTasks";
  static const checkFarmerDetails = "$baseUrl/farmer/checkDetails";
  static const refreshFarmerToken = "$baseUrl/farmer/refreshToken";
  static const farmerLogin = "$baseUrl/farmer/farmerLogin";
  static const farmerInfo = "$baseUrl/farmer/farmerInfo";
  static const getFarmersAllInfo = "$baseUrl/farmer/getFarmersAllInfo";
  static const getAllFarmersRelData = "$baseUrl/farmer/getAllFarmersRelData";
  static const updateFarmerImage = "$baseUrl/farmer/updateFarmerImage";

  //////////////////Sim API///////////////////
  static const getAllSimDetails = "$baseUrl/sim/getAllSimDetails";
  static const getSimDetails = "$baseUrl/sim/getSimDetails";
  static const addSim = "$baseUrl/sim/addSim";
  static const addRecharge = "$baseUrl/sim/addRecharge";
  static const updateDevice = "$baseUrl/sim/updateDevice";

  //////////////////Sim API///////////////////
  //////////////////Details///////////////////

  static String companyAddress = "Dehradun, Uttarakhand, 248001";
  static String companyPhone = "23232323232";
  static String companyEmail = "maxAnime@gmail.com";
  static const double androidMinimumVersion = 1.0;
  static const double iosMinimumVersion = 1.0;

/////////////////Details/////////////////////

  static String sPLogin = "LOGIN";
  static String sPLoginBy = "LOGINBY";
  static String sPLoginTime = "LOGIN_TIME";
  static String sPMobile = "MOBILE";
  static String sPEmail = "EMAIL";
  static String sPPassword = "PASSWORD";
  static String sPName = "Name";
  static String sPToken = "Token";
  static String sPBlock = "Block";
  static String sPFarmerSaveData = "FARMER";
  static String sPUserSaveData = "USER";
  static String sPProfileImage = "ProfileImage";
  static String sPId = "Id";
  static String sPColorStatus = "ColorStatus";
  static String sPQcId = "QcId";
  static String sPCurrentWeek = "CurrentWeek";
  static String sPCompletedTask = "completedTask";
  static String sPCompletedNotTask = "completedNotTask";
  static String sPUpcomingTask = "upcomingTask";
  static String sPLotNoList = "lotNoList";
  static String sPFirebaseDocumentId = "FirebaseDocID";
  static String sPhasil = "Hasil";
  static String languageCODE = 'language_code';
  static const String englishLanguage = "en";
  static const String hindiLanguage = "hi";
  static const String teluguLanguage = "te";
  static String defaultLanguage = "Language";
  static List<String> languageList = [englishLanguage, hindiLanguage];

  static String errorResponseCheck = "status";
  static String responseCheck = "message";

  static String testUserMobileNumber = "9999999999";
  static String testUserOTP = "123456";

  static String failed = "Failed";

  static String farmerProfileImages = "farmerProfileImages";

  static int taskAnsweredStatus = 3;
  static int taskUnAnsweredStatus = 2;
  static int taskUpcomingStatus = 1;

  static String laPoRan = "laPoRan";
  static String beRiTaTerKiNi = "beRitaTerKiNi";
  static String penCapAiAnPeTani = "penCapAiAnPeTani";
  static String peRingTanTuGas = "peRingTanTuGas";
  static String ramaLan = "RamaLan";
  static String jomBerBuAl = "jomBerBuAl";

  static String asFarmer = "Farmer";
  static String asUser = "User";

  //////////////////Check Value////////////////

  //////////////////Firebase///////////////////
  static String chatCollection = "chat";
  static String notificationCollection = "notification";
  static String soilNotificationCollection = "soilNotification";
  static String broadCastCollection = "broadCast";
  static String broadCastCollectionDeviceId = "deviceID";
  static String broadCastCollectionCrop = "crop";
  static String chatDocumentRead = "read";
  static String chatDocumentSendTime = "sendAt";
  static String chatDocumentUserType = "userFieldCropType";
  static String chatDocumentSender = "sender";
  static String chatDocumentReceiver = "receiver";
  static String chatDocumentMessage = "message";
  static int chatTextDocumentType = 0;
  static int chatImageDocumentType = 1;
  static int chatAudioDocumentType = 2;
  static int chatVideoDocumentType = 3;
  static String messageScreenType1 = "Message";
  static String messageScreenType2 = "BroadCast";
  static String notificationCollectionDeviceId = "deviceId";
  static String notificationCollectionCrop = "crop";
  static String notificationCollectionType = "type";
  static String notificationCollectionStatus = "status";
  static String notificationCollectionCreated = "created";
  //////////////////Firebase//////////////////

  static String notificationMessage = "Message";
  static String notificationDiseaseAlert = "DiseaseAlert";
  static String notificationSoilAlert = "SoilAlert";
  static String notificationSimAlert = "SimAlert";

  static String homeScreen = "0";
  static String homeScreenForeCast = "1";
  static String homeScreenDiseaseAlert = "2";
  static String homeScreenSoilAlert = "3";
  static String homeScreenChat = "4";

  static double temperatureCheckValue = 38.0;
  static double precipitationCheckValue = 7.99;
  static double precipitationMinCheckValue = 2.99;
  static double solarTemperatureCheckValue = 299;
  static String audioCheck = "Audio";
  static String imageCheck = "Image";
  static String textCheck = "Text";

  static String taskImagesUpload = "TaskImagesUpload";

  static String setting = "Setting";
  static String start = "Start";

  //////////////////Device Data//////////////////

  static String defaultEmail = "jc@gmail.com";
  static String defaultPassword = "Jasir@123";
  static String sensorD014 = "0340BB88";
  static String sensorD01 = "0320B634";
  static String sensorD011 = "0340BB86";
  static String sensorD013 = "0340BB84";

  static String admin = "rohitsengar@consultadapt.com";

//////////////////Task Action Type//////////////////

  static String radioButton = "RadioButton";
  static String dropdown = "Dropdown";
  static String price = "Price";
  static String upload = "Upload";
  static String quantity = "Quantity";
  static String plantMethod = "PlantMethod";

  static String otpSuccess = "SUCCESS";

//////////////////Path//////////////////

  static String home = "Home";
  static String chat = "Chat";

  static String temperatureValue = "\u00B0";

  // Shared Key
  static const String theme = 'theme';
  static const String themeDark = 'Dark';
  static const String themeLight = 'Light';
  static const String token = 'token';
  static const String countryCode = 'country_code';
  static const String languageCode = 'language_code';
  static const String onBoardingSkip = 'on_boarding_skip';
  static String memoryType = "Memory";

  static const String bannerAndroidAdUnitId =
      "ca-app-pub-3864108535711317/5409034571";
  static const String bannerIOSAdUnitId =
      "ca-app-pub-3864108535711317/5967190354";
  static const String interstitialAndroidAdUnitId =
      "ca-app-pub-3864108535711317/8924009261";
  static const String interstitialIOSAdUnitId =
      "ca-app-pub-3864108535711317/2625112650";
  static const String rewardedAndroidAdUnitId = "";
  static const String rewardedIOSAdUnitId = "";
  static const String termsAndConditions = "";
  static const String refundPrivacyPolicy = "";

/////////////////FireBase///////////////////

  static const String generalCollection = "general";
  static const String configDocument = "config";
  static const String userCollection = "user";
  static const String watchedCollection = "watch";
  static const String onBoardingDocument = "onBoarding";
  static const String aboutUsDocument = "aboutUs";
  static const String privacyPolicyDocument = "privacypolicy";

/////////////////FireBase///////////////////

  static const headers = {
    "User-Agent":
        "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36",
  };
}

List<Map> multiNews = [
  {"name": "beritarasmi".tr, "value": "beritarasmiShow".tr, "show": "1"},
  {"name": "beritalain".tr, "value": "beritalainShow".tr, "show": "1"},
];

Map<String, String> getHeaders(String? token) {
  final headers = {
    "accept": "application/json",
    "Authorization": " Bearer ${token ?? 'e'}"
  };
  return headers;
}

enum ActionType {
  RADIO_BUTTON,
  DROPDOWN,
  PRICE,
  UPLOAD,
  QUANTITY,
  PLANT_METHOD,
  F_DATE,
  NO_ACTION_NEEDED,
  TEXT,
  PERCENTAGE,
  VALUE
}

final actionTypeValues = EnumValues({
  "Dropdown": ActionType.DROPDOWN,
  "FDate": ActionType.F_DATE,
  "No action needed": ActionType.NO_ACTION_NEEDED,
  "Percentage": ActionType.PERCENTAGE,
  "PlantMethod": ActionType.PLANT_METHOD,
  "Price": ActionType.PRICE,
  "Quantity": ActionType.QUANTITY,
  "RadioButton": ActionType.RADIO_BUTTON,
  "Text": ActionType.TEXT,
  "Upload": ActionType.UPLOAD,
  "Value": ActionType.VALUE
});

enum SelectType { ALL, SPRAY }

final selectTypeValues =
    EnumValues({"ALL": SelectType.ALL, "SPRAY": SelectType.SPRAY});

class EnumValues<T> {
  late Map<String, T> map;

  EnumValues(this.map);

  Map<T, String> get reverse {
    return map.map((k, v) => MapEntry(v, k));
  }
}

enum GetLanding {
  recent,
  popular,
  trending,
}

isTodayOrNot() {}
