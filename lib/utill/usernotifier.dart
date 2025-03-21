import 'package:allinoneapp/data/model/response/configmodel.dart';
import 'package:flutter/cupertino.dart';

class UserNotifier extends ChangeNotifier {
  static ConfigModel configModel = ConfigModel();

  @override
  void notifyListeners() {
    super.notifyListeners();
  }
}
