import 'package:algoriza_task1_app/lang/messages_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocalizations {
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  //* Language -----------------------------------------------------------------

  String get LangMain1 {
    return Intl.message('الرجاء اختيار اللغة', name: 'LangMain1');
  }

  String get LangMain2 {
    return Intl.message('Please select language', name: 'LangMain2');
  }

  String get LangMain3 {
    return Intl.message('عربي', name: 'LangMain3');
  }

  String get LangMain4 {
    return Intl.message('English', name: 'LangMain4');
  }

  //----------------------------------------------------------------------------

  //* Onboarding ---------------------------------------------------------------

  String get skip_label {
    return Intl.message('SKIP', name: 'skip_label');
  }

  String get slide1_title {
    return Intl.message('Get food delivery to your doorstep ASAP',
        name: 'slide1_title');
  }

  String get slide1_desc {
    return Intl.message(
        'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
        name: 'slide1_desc');
  }

  String get slide2_title {
    return Intl.message('Buy Any food from your favorite restaurant',
        name: 'slide2_title');
  }

  String get slide2_desc {
    return Intl.message(
        'We are constatnly adding your favourite restaurant throughout the territory and around your area carefully selected',
        name: 'slide2_desc');
  }

  String get getStart_btn {
    return Intl.message('Get Start', name: 'getStart_btn');
  }

  String get register_msg {
    return Intl.message("Don't have an account?", name: 'register_msg');
  }

  String get signup_btn {
    return Intl.message('Sign Up', name: 'signup_btn');
  }

  //----------------------------------------------------------------------------

  // * getStart-----------------------------------------------------------------

  String get getStart1 {
    return Intl.message('Simply', name: 'getStart1');
  }

  String get getStart2 {
    return Intl.message('Boost', name: 'getStart2');
  }

  String get getStart3 {
    return Intl.message('Your Way', name: 'getStart3');
  }

  //----------------------------------------------------------------------------

  //* Login/Signup -------------------------------------------------------------

  String get welcome_msg {
    return Intl.message('Welcome to Fashion Daily', name: 'welcome_msg');
  }

  String get sign_in {
    return Intl.message('Sign in', name: 'sign_in');
  }

  String get mail_hint {
    return Intl.message('Email', name: 'mail_hint');
  }

  String get phone_hint {
    return Intl.message('Phone Number', name: 'phone_hint');
  }

  String get password_hint {
    return Intl.message('Password', name: 'password_hint');
  }

  String get register {
    return Intl.message('Register', name: 'register');
  }

  String get google_sign {
    return Intl.message('Sign with by google', name: 'google_sign');
  }

  String get register_msg2 {
    return Intl.message("Doesn't has an account?", name: 'register_msg2');
  }

  String get register_here {
    return Intl.message('Register here', name: 'register_here');
  }

  String get policy_msg {
    return Intl.message(
        'Use the application according to policy rules. Any kind of violation will be subject to sanctions',
        name: 'policy_msg');
  }

  String get sign_in_msg {
    return Intl.message("Has any account?", name: 'sign_in_msg');
  }

  String get sign_in_here {
    return Intl.message('Sign In here', name: 'sign_in_here');
  }

  String get accept_condition_msg {
    return Intl.message('By registering your account,you are agree to our',
        name: 'accept_condition_msg');
  }

  String get terms_condition {
    return Intl.message('terms and condition', name: 'terms_condition');
  }

  String get help {
    return Intl.message("Help", name: 'help');
  }

  String get or {
    return Intl.message('Or', name: 'or');
  }

  String get lang {
    return Intl.message('Lang', name: 'lang');
  }

//----------------------------------------------------------------------------

}

class SpecificLocalizationDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  final Locale overriddenLocale;

  SpecificLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;

  @override
  Future<AppLocalizations> load(Locale locale) =>
      AppLocalizations.load(overriddenLocale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => true;
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => ['ar', 'en'].contains(locale.languageCode);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<_DefaultCupertinoLocalizations>(
          _DefaultCupertinoLocalizations(locale));

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}

class _DefaultCupertinoLocalizations extends DefaultCupertinoLocalizations {
  final Locale locale;

  _DefaultCupertinoLocalizations(this.locale);
}
