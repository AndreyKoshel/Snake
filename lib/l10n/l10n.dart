import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ru'),
  ];
  static String? GetFlag(String code){
    switch (code) {
      case 'en':
        return'🇬🇧';
        case 'ru':
        return'🇷🇺';
        break;
      default:
    }
  }
}
