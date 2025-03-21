import '../../../utill/app_constants.dart';
import '../../../utill/images.dart';

class ConfigModel {
  bool? error;
  Message? message;

  ConfigModel({this.error, this.message});

  ConfigModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message =
        json['Message'] != null ? Message.fromJson(json['Message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    if (message != null) {
      data['Message'] = message!.toJson();
    }
    return data;
  }
}

class Message {
  String sId = "";
  String name = AppConstants.appName;
  String logo = AssetImages.appLogo;
  String address = AppConstants.companyAddress;
  String phone = AppConstants.companyPhone;
  String email = AppConstants.companyEmail;
  String latitute = "";
  String longitude = "";
  String termsAndConditions = AppConstants.termsAndConditions;
  String refundPrivacyPolicy = AppConstants.refundPrivacyPolicy;
  String privacyPolicy = AppConstants.privacyPolicyDocument;
  String aboutUs = "";
  List<String> socialMediaLink = [];
  List<OnBoarding> onBoarding = [];
  String faq = "";
  String testUserMobileNumber = AppConstants.testUserMobileNumber;
  String testUserOTP = AppConstants.testUserOTP;
  bool maintenanceMode = false;
  StoreConfig playStoreConfig = StoreConfig(
      status: 0, link: "", minVersion: AppConstants.androidMinimumVersion);
  StoreConfig appStoreConfig = StoreConfig(
      status: 0, link: "", minVersion: AppConstants.iosMinimumVersion);

  Message(
      {required this.sId,
      required this.name,
      required this.logo,
      required this.address,
      required this.phone,
      required this.email,
      required this.latitute,
      required this.longitude,
      required this.termsAndConditions,
      required this.refundPrivacyPolicy,
      required this.privacyPolicy,
      required this.aboutUs,
      required this.socialMediaLink,
      required this.faq,
      required this.testUserOTP,
      required this.testUserMobileNumber,
      required this.playStoreConfig,
      required this.appStoreConfig,
      required this.onBoarding,
      required this.maintenanceMode});

  Message.fromJson(Map<String, dynamic> json) {
    sId = json['_id'] ?? "";
    name = json['name'] ?? AppConstants.appName;
    logo = json['logo'] ?? "";
    address = json['address'] ?? AppConstants.companyAddress;
    phone = json['phone'] ?? AppConstants.companyPhone;
    email = json['email'] ?? AppConstants.companyEmail;
    latitute = json['latitute'] ?? "";
    longitude = json['longitude'] ?? "";
    termsAndConditions =
        json['termsAndConditions'] ?? AppConstants.termsAndConditions;
    refundPrivacyPolicy =
        json['refundPolicy'] ?? AppConstants.refundPrivacyPolicy;
    privacyPolicy = json['privacyPolicy'] ?? AppConstants.privacyPolicyDocument;
    aboutUs = json['aboutUs'] ?? "";
    testUserMobileNumber =
        json['testUserMobileNumber'] ?? AppConstants.testUserMobileNumber;
    testUserOTP = json['testUserOTP'] ?? AppConstants.testUserOTP;
    socialMediaLink = json['socialMediaLink'].cast<String>() ?? [];
    if (json['onBoarding'] != null) {
      onBoarding = <OnBoarding>[];
      json['onBoarding'].forEach((v) {
        onBoarding.add(OnBoarding.fromJson(v));
      });
    }
    faq = json['faq'];
    maintenanceMode = json['maintenanceMode'] ?? false;
    playStoreConfig = json['playStoreConfig'] != null
        ? StoreConfig.fromJson(json['playStoreConfig'])
        : StoreConfig(
            status: 0,
            link: "",
            minVersion: AppConstants.androidMinimumVersion);
    appStoreConfig = json['appStoreConfig'] != null
        ? StoreConfig.fromJson(json['appStoreConfig'])
        : StoreConfig(
            status: 0, link: "", minVersion: AppConstants.iosMinimumVersion);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['logo'] = logo;
    data['address'] = address;
    data['phone'] = phone;
    data['email'] = email;
    data['latitute'] = latitute;
    data['longitude'] = longitude;
    data['termsAndConditions'] = termsAndConditions;
    data['refundPolicy'] = refundPrivacyPolicy;
    data['privacyPolicy'] = privacyPolicy;
    data['testUserMobileNumber'] = testUserMobileNumber;
    data['testUserOTP'] = testUserOTP;
    data['aboutUs'] = aboutUs;
    data['socialMediaLink'] = socialMediaLink;
    data['onBoarding'] = onBoarding;
    data['faq'] = faq;
    data['playStoreConfig'] = playStoreConfig;
    data['appStoreConfig'] = appStoreConfig;
    data['maintenanceMode'] = maintenanceMode;
    return data;
  }
}

class StoreConfig {
  int? _status;
  String? _link;
  double? _minVersion;

  StoreConfig(
      {required int status, required String link, required double minVersion}) {
    _status = status;
    _link = link;
    _minVersion = minVersion;
  }
  int? get status => _status;
  String? get link => _link;
  double? get minVersion => _minVersion;

  StoreConfig.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    if (json['link'] != null) {
      _link = json['link'];
    }
    if (json['min_version'] != null && json['min_version'] != '') {
      _minVersion = double.parse(json['min_version'].toString());
    } else {
      _minVersion = 0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = _status;
    data['link'] = _link;
    data['min_version'] = _minVersion;

    return data;
  }
}

class OnBoarding {
  String? sTitle;
  String? sImageUrl;
  String? sDescription;

  OnBoarding({this.sTitle, this.sImageUrl, this.sDescription});

  OnBoarding.fromJson(Map<String, dynamic> json) {
    sTitle = json['title'];
    sImageUrl = json['imageUrl'];
    sDescription = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imageUrl'] = sImageUrl;
    data['description'] = sDescription;
    return data;
  }
}
