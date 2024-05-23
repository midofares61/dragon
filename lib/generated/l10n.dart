// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `HOUSE OF DRAGON`
  String get title {
    return Intl.message(
      'HOUSE OF DRAGON',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Training`
  String get homeTitle {
    return Intl.message(
      'Training',
      name: 'homeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get discoverTitle {
    return Intl.message(
      'Discover',
      name: 'discoverTitle',
      desc: '',
      args: [],
    );
  }

  /// `Trainer`
  String get trainerTitle {
    return Intl.message(
      'Trainer',
      name: 'trainerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingTitle {
    return Intl.message(
      'Settings',
      name: 'settingTitle',
      desc: '',
      args: [],
    );
  }

  /// `beginner`
  String get sectionBegTitle {
    return Intl.message(
      'beginner',
      name: 'sectionBegTitle',
      desc: '',
      args: [],
    );
  }

  /// `intermediate`
  String get sectionIntTitle {
    return Intl.message(
      'intermediate',
      name: 'sectionIntTitle',
      desc: '',
      args: [],
    );
  }

  /// `Advanced`
  String get sectionProTitle {
    return Intl.message(
      'Advanced',
      name: 'sectionProTitle',
      desc: '',
      args: [],
    );
  }

  /// `workout`
  String get workout {
    return Intl.message(
      'workout',
      name: 'workout',
      desc: '',
      args: [],
    );
  }

  /// `kcal`
  String get kcal {
    return Intl.message(
      'kcal',
      name: 'kcal',
      desc: '',
      args: [],
    );
  }

  /// `minute`
  String get minute {
    return Intl.message(
      'minute',
      name: 'minute',
      desc: '',
      args: [],
    );
  }

  /// `mins`
  String get minuteCart {
    return Intl.message(
      'mins',
      name: 'minuteCart',
      desc: '',
      args: [],
    );
  }

  /// `exercises`
  String get exercises {
    return Intl.message(
      'exercises',
      name: 'exercises',
      desc: '',
      args: [],
    );
  }

  /// `start`
  String get start {
    return Intl.message(
      'start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `close`
  String get close {
    return Intl.message(
      'close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `exit`
  String get exit {
    return Intl.message(
      'exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `continue`
  String get continues {
    return Intl.message(
      'continue',
      name: 'continues',
      desc: '',
      args: [],
    );
  }

  /// `Just take a look`
  String get justLook {
    return Intl.message(
      'Just take a look',
      name: 'justLook',
      desc: '',
      args: [],
    );
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `previous`
  String get previous {
    return Intl.message(
      'previous',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `done`
  String get done {
    return Intl.message(
      'done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `finish`
  String get finish {
    return Intl.message(
      'finish',
      name: 'finish',
      desc: '',
      args: [],
    );
  }

  /// `next`
  String get next {
    return Intl.message(
      'next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Go Premium`
  String get premium {
    return Intl.message(
      'Go Premium',
      name: 'premium',
      desc: '',
      args: [],
    );
  }

  /// `Workout Setting`
  String get workoutSetting {
    return Intl.message(
      'Workout Setting',
      name: 'workoutSetting',
      desc: '',
      args: [],
    );
  }

  /// `General Setting`
  String get generalSetting {
    return Intl.message(
      'General Setting',
      name: 'generalSetting',
      desc: '',
      args: [],
    );
  }

  /// `Language Options`
  String get languageSetting {
    return Intl.message(
      'Language Options',
      name: 'languageSetting',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logoutSetting {
    return Intl.message(
      'Logout',
      name: 'logoutSetting',
      desc: '',
      args: [],
    );
  }

  /// `Share with frinds`
  String get shareSetting {
    return Intl.message(
      'Share with frinds',
      name: 'shareSetting',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedSetting {
    return Intl.message(
      'Feedback',
      name: 'feedSetting',
      desc: '',
      args: [],
    );
  }

  /// `Rate Us`
  String get rateSetting {
    return Intl.message(
      'Rate Us',
      name: 'rateSetting',
      desc: '',
      args: [],
    );
  }

  /// `Voice Options(TTS)`
  String get voiceSetting {
    return Intl.message(
      'Voice Options(TTS)',
      name: 'voiceSetting',
      desc: '',
      args: [],
    );
  }

  /// `Suggest Other Features`
  String get featureSetting {
    return Intl.message(
      'Suggest Other Features',
      name: 'featureSetting',
      desc: '',
      args: [],
    );
  }

  /// `Training rest`
  String get trainingRest {
    return Intl.message(
      'Training rest',
      name: 'trainingRest',
      desc: '',
      args: [],
    );
  }

  /// `Sound Options`
  String get soundOptions {
    return Intl.message(
      'Sound Options',
      name: 'soundOptions',
      desc: '',
      args: [],
    );
  }

  /// `secs`
  String get second {
    return Intl.message(
      'secs',
      name: 'second',
      desc: '',
      args: [],
    );
  }

  /// `Remind me to work out every day`
  String get alarm {
    return Intl.message(
      'Remind me to work out every day',
      name: 'alarm',
      desc: '',
      args: [],
    );
  }

  /// `Keep the screen on`
  String get wake {
    return Intl.message(
      'Keep the screen on',
      name: 'wake',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy`
  String get privacy {
    return Intl.message(
      'Privacy policy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
