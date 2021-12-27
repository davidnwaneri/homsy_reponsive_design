import 'package:flutter/material.dart';

class ImageAssetManager {
  static const _prefixID = 'assets/images';

  static const _homeImages = <String, String>{
    'home_1': '$_prefixID/home_1.jpg',
    'home_2': '$_prefixID/home_2.jpg',
    'home_3': '$_prefixID/home_3.jpg',
    'home_4': '$_prefixID/home_4.jpg',
    'home_5': '$_prefixID/home_5.jpg',
    'home_6': '$_prefixID/home_6.jpg',
  };

  static final home_1 = Image.asset(_homeImages['home_1'] as String);
  static final home_2 = Image.asset(_homeImages['home_2'] as String);
  static final home_3 = Image.asset(_homeImages['home_3'] as String);
  static final home_4 = Image.asset(_homeImages['home_4'] as String);
  static final home_5 = Image.asset(_homeImages['home_5'] as String);
  static final home_6 = Image.asset(_homeImages['home_6'] as String);

  static void preLoadImageAssets(BuildContext context) {
    for (var key in _homeImages.keys) {
      if (key == 'home_3') {
        continue;
      }
      precacheImage(Image.asset('${_homeImages[key]}').image, context);
    }
  }
}
