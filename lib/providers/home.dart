import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math' as math;

final homeFuture =
ChangeNotifierProvider.autoDispose<HomeProvider>(
        (ref) => HomeProvider());

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
  }
 Color containerColor= Color(0xffffffff);
  void generateColor(){
    containerColor= Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    notifyListeners();
  }
}