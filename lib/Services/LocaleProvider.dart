import 'package:flutter/cupertino.dart';
import 'package:snake/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier{
    Locale? _locale;
  Locale? get locale => _locale;
  void SetLocale(Locale locale){
    if (!L10n.all.contains(locale)) 
    return;
    _locale = locale;
    notifyListeners();
  }
  void ClearLocale(){
    _locale = null!;
    notifyListeners();
  }
}