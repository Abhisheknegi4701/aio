import 'package:flutter/material.dart';

import '../data/repository/home_repo.dart';

class HomeProvider extends ChangeNotifier {
  final HomeRepo homeRepo;
  HomeProvider({required this.homeRepo});
}
