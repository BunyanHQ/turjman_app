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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Copied to clipboard`
  String get copySuccess {
    return Intl.message(
      'Copied to clipboard',
      name: 'copySuccess',
      desc: 'The message displayed when text is successfully copied to the clipboard',
      args: [],
    );
  }

  /// `Turjuman`
  String get appTitle {
    return Intl.message(
      'Turjuman',
      name: 'appTitle',
      desc: 'The application title',
      args: [],
    );
  }

  /// `Let's Get Started`
  String get onBoardingButton1 {
    return Intl.message(
      'Let\'s Get Started',
      name: 'onBoardingButton1',
      desc: 'The title of the first onboarding button',
      args: [],
    );
  }

  /// `Next`
  String get onBoardingButton2 {
    return Intl.message(
      'Next',
      name: 'onBoardingButton2',
      desc: 'The title of the second onboarding button',
      args: [],
    );
  }

  /// `Next`
  String get onBoardingButton3 {
    return Intl.message(
      'Next',
      name: 'onBoardingButton3',
      desc: 'The title of the third onboarding button',
      args: [],
    );
  }

  /// `Start Translating`
  String get onBoardingButton4 {
    return Intl.message(
      'Start Translating',
      name: 'onBoardingButton4',
      desc: 'The title of the fourth onboarding button',
      args: [],
    );
  }

  /// `Turjuman`
  String get homeTitle {
    return Intl.message(
      'Turjuman',
      name: 'homeTitle',
      desc: 'The title of the home page',
      args: [],
    );
  }

  /// `The best translation app for your needs`
  String get homeSubtitle {
    return Intl.message(
      'The best translation app for your needs',
      name: 'homeSubtitle',
      desc: 'The subtitle of the home page',
      args: [],
    );
  }

  /// `Source`
  String get source {
    return Intl.message(
      'Source',
      name: 'source',
      desc: 'The source language label',
      args: [],
    );
  }

  /// `Type something to translate`
  String get sourceTextHint {
    return Intl.message(
      'Type something to translate',
      name: 'sourceTextHint',
      desc: 'The hint text for the source text field',
      args: [],
    );
  }

  /// `Translation`
  String get translation {
    return Intl.message(
      'Translation',
      name: 'translation',
      desc: 'The translation label',
      args: [],
    );
  }

  /// `Image`
  String get image {
    return Intl.message(
      'Image',
      name: 'image',
      desc: 'The image label',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: 'The camera label',
      args: [],
    );
  }

  /// `Voice`
  String get voice {
    return Intl.message(
      'Voice',
      name: 'voice',
      desc: 'The voice label',
      args: [],
    );
  }

  /// `Recent Translations`
  String get recentTranslations {
    return Intl.message(
      'Recent Translations',
      name: 'recentTranslations',
      desc: 'The recent translations label',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: 'The view all label',
      args: [],
    );
  }

  /// `Translations`
  String get translations {
    return Intl.message(
      'Translations',
      name: 'translations',
      desc: 'The translations label',
      args: [],
    );
  }

  /// `No translations available`
  String get emptyTranslations {
    return Intl.message(
      'No translations available',
      name: 'emptyTranslations',
      desc: 'The message displayed when there are no translations available',
      args: [],
    );
  }

  /// `Source`
  String get sourceTitle {
    return Intl.message(
      'Source',
      name: 'sourceTitle',
      desc: 'The title for the source language',
      args: [],
    );
  }

  /// `Translation`
  String get translationTitle {
    return Intl.message(
      'Translation',
      name: 'translationTitle',
      desc: 'The title for the translation',
      args: [],
    );
  }

  /// `Audio Translation`
  String get audioTitle {
    return Intl.message(
      'Audio Translation',
      name: 'audioTitle',
      desc: 'The title for the audio translation feature',
      args: [],
    );
  }

  /// `Speak to translate in real time`
  String get aduioSubtitle {
    return Intl.message(
      'Speak to translate in real time',
      name: 'aduioSubtitle',
      desc: 'The subtitle for the audio translation feature',
      args: [],
    );
  }

  /// `Source Text`
  String get sourceText {
    return Intl.message(
      'Source Text',
      name: 'sourceText',
      desc: 'The title for the source text field',
      args: [],
    );
  }

  /// `Translation Text`
  String get translationText {
    return Intl.message(
      'Translation Text',
      name: 'translationText',
      desc: 'The title for the translation text field',
      args: [],
    );
  }

  /// `Image to Text`
  String get imageTitle {
    return Intl.message(
      'Image to Text',
      name: 'imageTitle',
      desc: 'The title for the image',
      args: [],
    );
  }

  /// `Select an image to extract text from`
  String get imageSubtitle {
    return Intl.message(
      'Select an image to extract text from',
      name: 'imageSubtitle',
      desc: 'The subtitle for the image',
      args: [],
    );
  }

  /// `Select an image`
  String get selectAnImage {
    return Intl.message(
      'Select an image',
      name: 'selectAnImage',
      desc: 'The label for selecting an image',
      args: [],
    );
  }

  /// `Choose an image from your gallery\nor capture a new one to extract text.`
  String get selectAnImageHint {
    return Intl.message(
      'Choose an image from your gallery\nor capture a new one to extract text.',
      name: 'selectAnImageHint',
      desc: 'The hint text for selecting an image',
      args: [],
    );
  }

  /// `Choose from Gallery`
  String get chooseFromGallery {
    return Intl.message(
      'Choose from Gallery',
      name: 'chooseFromGallery',
      desc: 'The label for choosing an image from the gallery',
      args: [],
    );
  }

  /// `Capture with Camera`
  String get captureWithCamera {
    return Intl.message(
      'Capture with Camera',
      name: 'captureWithCamera',
      desc: 'The label for capturing an image with the camera',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: 'The label for \'or\' between two options',
      args: [],
    );
  }

  /// `Supported formats: JPG, PNG, GIF`
  String get supportedFormats {
    return Intl.message(
      'Supported formats: JPG, PNG, GIF',
      name: 'supportedFormats',
      desc: 'The label for supported image formats',
      args: [],
    );
  }

  /// `Settings`
  String get settingsTitle {
    return Intl.message(
      'Settings',
      name: 'settingsTitle',
      desc: 'The title for the settings page',
      args: [],
    );
  }

  /// `Customize your app experience`
  String get settingsSubtitle {
    return Intl.message(
      'Customize your app experience',
      name: 'settingsSubtitle',
      desc: 'The subtitle for the settings page',
      args: [],
    );
  }

  /// `Personalization`
  String get personalization {
    return Intl.message(
      'Personalization',
      name: 'personalization',
      desc: 'The label for personalization section',
      args: [],
    );
  }

  /// `Data & Storage`
  String get dataAndStorage {
    return Intl.message(
      'Data & Storage',
      name: 'dataAndStorage',
      desc: 'The label for data and storage section',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: 'The label for support section',
      args: [],
    );
  }

  /// `Theme`
  String get themeTitle {
    return Intl.message(
      'Theme',
      name: 'themeTitle',
      desc: 'The title for the theme',
      args: [],
    );
  }

  /// `Choose between light, dark, or system default`
  String get themeSubtitle {
    return Intl.message(
      'Choose between light, dark, or system default',
      name: 'themeSubtitle',
      desc: 'The subtitle for the theme',
      args: [],
    );
  }

  /// `Light`
  String get themeLight {
    return Intl.message(
      'Light',
      name: 'themeLight',
      desc: 'The label for the light theme',
      args: [],
    );
  }

  /// `Dark`
  String get themeDark {
    return Intl.message(
      'Dark',
      name: 'themeDark',
      desc: 'The label for the dark theme',
      args: [],
    );
  }

  /// `System`
  String get themeSystem {
    return Intl.message(
      'System',
      name: 'themeSystem',
      desc: 'The label for the system default theme',
      args: [],
    );
  }

  /// `Language`
  String get languageTitle {
    return Intl.message(
      'Language',
      name: 'languageTitle',
      desc: 'The title for the language',
      args: [],
    );
  }

  /// `Select your preferred language for the app`
  String get languageSubtitle {
    return Intl.message(
      'Select your preferred language for the app',
      name: 'languageSubtitle',
      desc: 'The subtitle for the language',
      args: [],
    );
  }

  /// `App Language`
  String get appLanguage {
    return Intl.message(
      'App Language',
      name: 'appLanguage',
      desc: 'The title for the app language',
      args: [],
    );
  }

  /// `Select your preferred language for the app`
  String get appLanguageSubtitle {
    return Intl.message(
      'Select your preferred language for the app',
      name: 'appLanguageSubtitle',
      desc: 'The subtitle for the app language',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
      desc: 'The label for languages',
      args: [],
    );
  }

  /// `Select your preferred language for the app`
  String get languagesSubtitle {
    return Intl.message(
      'Select your preferred language for the app',
      name: 'languagesSubtitle',
      desc: 'The subtitle for languages',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: 'The label for English language',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: 'The label for Arabic language',
      args: [],
    );
  }

  /// `Tap to change the app language`
  String get languageItemSubtitle {
    return Intl.message(
      'Tap to change the app language',
      name: 'languageItemSubtitle',
      desc: 'The subtitle for the language item',
      args: [],
    );
  }

  /// `Offline Languages`
  String get offlineLanguagesTitle {
    return Intl.message(
      'Offline Languages',
      name: 'offlineLanguagesTitle',
      desc: 'The title for the offline languages',
      args: [],
    );
  }

  /// `Manage your offline language packs`
  String get offlineLanguagesSubtitle {
    return Intl.message(
      'Manage your offline language packs',
      name: 'offlineLanguagesSubtitle',
      desc: 'The subtitle for the offline languages',
      args: [],
    );
  }

  /// `Downloaded Languages`
  String get downloadedLanguages {
    return Intl.message(
      'Downloaded Languages',
      name: 'downloadedLanguages',
      desc: 'The label for downloaded languages',
      args: [],
    );
  }

  /// `Other Languages`
  String get otherLanguages {
    return Intl.message(
      'Other Languages',
      name: 'otherLanguages',
      desc: 'The label for other languages',
      args: [],
    );
  }

  /// `Download from Wi-Fi Only`
  String get downloadFrowWifiOnlyTitle {
    return Intl.message(
      'Download from Wi-Fi Only',
      name: 'downloadFrowWifiOnlyTitle',
      desc: 'The title for downloading from Wi-Fi',
      args: [],
    );
  }

  /// `Download language packs only when connected to Wi-Fi to save data.`
  String get downloadFrowWifiOnlySubtitle {
    return Intl.message(
      'Download language packs only when connected to Wi-Fi to save data.',
      name: 'downloadFrowWifiOnlySubtitle',
      desc: 'The subtitle for downloading from Wi-Fi',
      args: [],
    );
  }

  /// `Translate everything. Connect everyone.`
  String get appCardSubtitle {
    return Intl.message(
      'Translate everything. Connect everyone.',
      name: 'appCardSubtitle',
      desc: 'The subtitle for the app card',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: 'The label for the app version',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: 'The label for the update button',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUsTitle {
    return Intl.message(
      'Contact Us',
      name: 'contactUsTitle',
      desc: 'The title for the contact us section',
      args: [],
    );
  }

  /// `Get in touch with our support team`
  String get contactUsSubtitle {
    return Intl.message(
      'Get in touch with our support team',
      name: 'contactUsSubtitle',
      desc: 'The subtitle for the contact us section',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: 'The title for the contact us page',
      args: [],
    );
  }

  /// `We're here to help. Reach out to us through any of the channels below and our team will get back to you as soon as possible.`
  String get contactUsDescription {
    return Intl.message(
      'We\'re here to help. Reach out to us through any of the channels below and our team will get back to you as soon as possible.',
      name: 'contactUsDescription',
      desc: 'The description shown at the top of the contact us page',
      args: [],
    );
  }

  /// `Customer Support`
  String get customerSupport {
    return Intl.message(
      'Customer Support',
      name: 'customerSupport',
      desc: 'The label for the customer support section',
      args: [],
    );
  }

  /// `Phone Number`
  String get contactNumber {
    return Intl.message(
      'Phone Number',
      name: 'contactNumber',
      desc: 'The label for the phone/WhatsApp number field',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: 'The label for the email address field',
      args: [],
    );
  }

  /// `Social Media`
  String get socialMedia {
    return Intl.message(
      'Social Media',
      name: 'socialMedia',
      desc: 'The label for the social media section',
      args: [],
    );
  }

  /// `Instagram`
  String get instagram {
    return Intl.message(
      'Instagram',
      name: 'instagram',
      desc: 'The label for the Instagram link',
      args: [],
    );
  }

  /// `Twitter`
  String get twitter {
    return Intl.message(
      'Twitter',
      name: 'twitter',
      desc: 'The label for the Twitter link',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: 'The label for the Facebook link',
      args: [],
    );
  }

  /// `Rate Us`
  String get rateUs {
    return Intl.message(
      'Rate Us',
      name: 'rateUs',
      desc: 'The title for the rate us page',
      args: [],
    );
  }

  /// `Your feedback helps us improve and reach more people like you.`
  String get rateUsSubtitle {
    return Intl.message(
      'Your feedback helps us improve and reach more people like you.',
      name: 'rateUsSubtitle',
      desc: 'The subtitle for the rate us page',
      args: [],
    );
  }

  /// `Enjoying Turjuman?`
  String get enjoyingApp {
    return Intl.message(
      'Enjoying Turjuman?',
      name: 'enjoyingApp',
      desc: 'The header text asking the user if they enjoy the app',
      args: [],
    );
  }

  /// `TELL US WHAT YOU THINK`
  String get tellUsWhatYouThink {
    return Intl.message(
      'TELL US WHAT YOU THINK',
      name: 'tellUsWhatYouThink',
      desc: 'The label above the feedback text field',
      args: [],
    );
  }

  /// `Your thoughts make us better...`
  String get yourThoughtsMakeUsBetter {
    return Intl.message(
      'Your thoughts make us better...',
      name: 'yourThoughtsMakeUsBetter',
      desc: 'The hint text inside the feedback text field',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: 'The label for the submit button',
      args: [],
    );
  }

  /// `Maybe Later`
  String get maybeLater {
    return Intl.message(
      'Maybe Later',
      name: 'maybeLater',
      desc: 'The label for the dismiss/skip button',
      args: [],
    );
  }

  /// `Help Center`
  String get helpCenter {
    return Intl.message(
      'Help Center',
      name: 'helpCenter',
      desc: 'The title for the help center page',
      args: [],
    );
  }

  /// `How can we help you today?`
  String get howCanWeHelp {
    return Intl.message(
      'How can we help you today?',
      name: 'howCanWeHelp',
      desc: 'The header text on the help center page',
      args: [],
    );
  }

  /// `Still need help?`
  String get stillNeedHelp {
    return Intl.message(
      'Still need help?',
      name: 'stillNeedHelp',
      desc: 'The title of the contact support banner',
      args: [],
    );
  }

  /// `Our support team is ready to answer your questions.`
  String get stillNeedHelpSubtitle {
    return Intl.message(
      'Our support team is ready to answer your questions.',
      name: 'stillNeedHelpSubtitle',
      desc: 'The subtitle of the contact support banner',
      args: [],
    );
  }

  /// `Contact Support`
  String get contactSupport {
    return Intl.message(
      'Contact Support',
      name: 'contactSupport',
      desc: 'The label for the contact support button',
      args: [],
    );
  }

  /// `Frequently Asked Questions`
  String get frequentlyAsked {
    return Intl.message(
      'Frequently Asked Questions',
      name: 'frequentlyAsked',
      desc: 'The title above the FAQ list',
      args: [],
    );
  }

  /// `Can I use the app without internet?`
  String get faqOfflineModeQuestion {
    return Intl.message(
      'Can I use the app without internet?',
      name: 'faqOfflineModeQuestion',
      desc: 'FAQ question about offline mode',
      args: [],
    );
  }

  /// `Yes, once you download a language pack you can translate offline.`
  String get faqOfflineModeAnswer1 {
    return Intl.message(
      'Yes, once you download a language pack you can translate offline.',
      name: 'faqOfflineModeAnswer1',
      desc: 'FAQ answer 1 about offline mode',
      args: [],
    );
  }

  /// `Go to Settings > Offline Languages to manage your downloads.`
  String get faqOfflineModeAnswer2 {
    return Intl.message(
      'Go to Settings > Offline Languages to manage your downloads.',
      name: 'faqOfflineModeAnswer2',
      desc: 'FAQ answer 2 about offline mode',
      args: [],
    );
  }

  /// `Voice and image translation may still require an internet connection.`
  String get faqOfflineModeAnswer3 {
    return Intl.message(
      'Voice and image translation may still require an internet connection.',
      name: 'faqOfflineModeAnswer3',
      desc: 'FAQ answer 3 about offline mode',
      args: [],
    );
  }

  /// `How do I translate text from an image?`
  String get faqTranslateImagesQuestion {
    return Intl.message(
      'How do I translate text from an image?',
      name: 'faqTranslateImagesQuestion',
      desc: 'FAQ question about translating images',
      args: [],
    );
  }

  /// `Open the Image tab and choose a photo from your gallery.`
  String get faqTranslateImagesAnswer1 {
    return Intl.message(
      'Open the Image tab and choose a photo from your gallery.',
      name: 'faqTranslateImagesAnswer1',
      desc: 'FAQ answer 1 about translating images',
      args: [],
    );
  }

  /// `You can also capture a new photo directly with your camera.`
  String get faqTranslateImagesAnswer2 {
    return Intl.message(
      'You can also capture a new photo directly with your camera.',
      name: 'faqTranslateImagesAnswer2',
      desc: 'FAQ answer 2 about translating images',
      args: [],
    );
  }

  /// `Supported formats are JPG, PNG, and GIF.`
  String get faqTranslateImagesAnswer3 {
    return Intl.message(
      'Supported formats are JPG, PNG, and GIF.',
      name: 'faqTranslateImagesAnswer3',
      desc: 'FAQ answer 3 about translating images',
      args: [],
    );
  }

  /// `Does my translation history sync across devices?`
  String get faqSyncingQuestion {
    return Intl.message(
      'Does my translation history sync across devices?',
      name: 'faqSyncingQuestion',
      desc: 'FAQ question about syncing',
      args: [],
    );
  }

  /// `Translation history is currently stored locally on your device.`
  String get faqSyncingAnswer1 {
    return Intl.message(
      'Translation history is currently stored locally on your device.',
      name: 'faqSyncingAnswer1',
      desc: 'FAQ answer 1 about syncing',
      args: [],
    );
  }

  /// `Cross-device sync is planned for a future update.`
  String get faqSyncingAnswer2 {
    return Intl.message(
      'Cross-device sync is planned for a future update.',
      name: 'faqSyncingAnswer2',
      desc: 'FAQ answer 2 about syncing',
      args: [],
    );
  }

  /// `Make sure to back up important translations manually for now.`
  String get faqSyncingAnswer3 {
    return Intl.message(
      'Make sure to back up important translations manually for now.',
      name: 'faqSyncingAnswer3',
      desc: 'FAQ answer 3 about syncing',
      args: [],
    );
  }

  /// `What do I get with premium?`
  String get faqPremiumQuestion {
    return Intl.message(
      'What do I get with premium?',
      name: 'faqPremiumQuestion',
      desc: 'FAQ question about premium',
      args: [],
    );
  }

  /// `Unlimited offline language packs.`
  String get faqPremiumAnswer1 {
    return Intl.message(
      'Unlimited offline language packs.',
      name: 'faqPremiumAnswer1',
      desc: 'FAQ answer 1 about premium',
      args: [],
    );
  }

  /// `Priority translation speed with no ads.`
  String get faqPremiumAnswer2 {
    return Intl.message(
      'Priority translation speed with no ads.',
      name: 'faqPremiumAnswer2',
      desc: 'FAQ answer 2 about premium',
      args: [],
    );
  }

  /// `Early access to new features.`
  String get faqPremiumAnswer3 {
    return Intl.message(
      'Early access to new features.',
      name: 'faqPremiumAnswer3',
      desc: 'FAQ answer 3 about premium',
      args: [],
    );
  }

  /// `How many languages are supported?`
  String get faqLanguagesQuestion {
    return Intl.message(
      'How many languages are supported?',
      name: 'faqLanguagesQuestion',
      desc: 'FAQ question about supported languages',
      args: [],
    );
  }

  /// `Turjuman supports dozens of languages for text translation.`
  String get faqLanguagesAnswer1 {
    return Intl.message(
      'Turjuman supports dozens of languages for text translation.',
      name: 'faqLanguagesAnswer1',
      desc: 'FAQ answer 1 about supported languages',
      args: [],
    );
  }

  /// `New languages are added regularly based on user requests.`
  String get faqLanguagesAnswer2 {
    return Intl.message(
      'New languages are added regularly based on user requests.',
      name: 'faqLanguagesAnswer2',
      desc: 'FAQ answer 2 about supported languages',
      args: [],
    );
  }

  /// `Check the Languages section in Settings for the full list.`
  String get faqLanguagesAnswer3 {
    return Intl.message(
      'Check the Languages section in Settings for the full list.',
      name: 'faqLanguagesAnswer3',
      desc: 'FAQ answer 3 about supported languages',
      args: [],
    );
  }

  /// `How does voice translation work?`
  String get faqVoiceQuestion {
    return Intl.message(
      'How does voice translation work?',
      name: 'faqVoiceQuestion',
      desc: 'FAQ question about voice translation',
      args: [],
    );
  }

  /// `Tap the microphone icon and speak clearly into your device.`
  String get faqVoiceAnswer1 {
    return Intl.message(
      'Tap the microphone icon and speak clearly into your device.',
      name: 'faqVoiceAnswer1',
      desc: 'FAQ answer 1 about voice translation',
      args: [],
    );
  }

  /// `Your speech is converted to text and translated in real time.`
  String get faqVoiceAnswer2 {
    return Intl.message(
      'Your speech is converted to text and translated in real time.',
      name: 'faqVoiceAnswer2',
      desc: 'FAQ answer 2 about voice translation',
      args: [],
    );
  }

  /// `Voice translation requires an active internet connection.`
  String get faqVoiceAnswer3 {
    return Intl.message(
      'Voice translation requires an active internet connection.',
      name: 'faqVoiceAnswer3',
      desc: 'FAQ answer 3 about voice translation',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: 'The title for the privacy policy page',
      args: [],
    );
  }

  /// `LEGAL DOCUMENTATION`
  String get legalDocumentation {
    return Intl.message(
      'LEGAL DOCUMENTATION',
      name: 'legalDocumentation',
      desc: 'The small tag label above the privacy policy title',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicyTitle {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicyTitle',
      desc: 'The large title on the privacy policy page',
      args: [],
    );
  }

  /// `Last updated: June 2024`
  String get lastUpdated {
    return Intl.message(
      'Last updated: June 2024',
      name: 'lastUpdated',
      desc: 'The label showing when the privacy policy was last updated',
      args: [],
    );
  }

  /// `Secure by Design`
  String get secureByDesign {
    return Intl.message(
      'Secure by Design',
      name: 'secureByDesign',
      desc: 'The title of the secure-by-design highlight card',
      args: [],
    );
  }

  /// `Your data is encrypted and never sold to third parties.`
  String get secureByDesignSubtitle {
    return Intl.message(
      'Your data is encrypted and never sold to third parties.',
      name: 'secureByDesignSubtitle',
      desc: 'The subtitle of the secure-by-design highlight card',
      args: [],
    );
  }

  /// `PROCESSING & STORAGE`
  String get processingStorageTag {
    return Intl.message(
      'PROCESSING & STORAGE',
      name: 'processingStorageTag',
      desc: 'The tag label for the data collection section',
      args: [],
    );
  }

  /// `Data We Collect`
  String get dataCollectionTitle {
    return Intl.message(
      'Data We Collect',
      name: 'dataCollectionTitle',
      desc: 'The title for the data collection section',
      args: [],
    );
  }

  /// `We collect the text, images, and audio you choose to translate, along with basic device information to improve app performance.`
  String get dataCollectionContent {
    return Intl.message(
      'We collect the text, images, and audio you choose to translate, along with basic device information to improve app performance.',
      name: 'dataCollectionContent',
      desc: 'The content for the data collection section',
      args: [],
    );
  }

  /// `We never read or store your translations for any purpose other than providing the service to you.`
  String get dataCollectionQuote {
    return Intl.message(
      'We never read or store your translations for any purpose other than providing the service to you.',
      name: 'dataCollectionQuote',
      desc: 'The highlighted quote inside the data collection section',
      args: [],
    );
  }

  /// `OFFLINE MODE`
  String get offlineModeTag {
    return Intl.message(
      'OFFLINE MODE',
      name: 'offlineModeTag',
      desc: 'The tag label for the offline usage section',
      args: [],
    );
  }

  /// `Offline Usage`
  String get offlineUsageTitle {
    return Intl.message(
      'Offline Usage',
      name: 'offlineUsageTitle',
      desc: 'The title for the offline usage section',
      args: [],
    );
  }

  /// `When you download a language pack, translations happen entirely on your device and are never sent to our servers.`
  String get offlineUsageContent {
    return Intl.message(
      'When you download a language pack, translations happen entirely on your device and are never sent to our servers.',
      name: 'offlineUsageContent',
      desc: 'The content for the offline usage section',
      args: [],
    );
  }

  /// `AUDIO INPUT`
  String get audioInputTag {
    return Intl.message(
      'AUDIO INPUT',
      name: 'audioInputTag',
      desc: 'The tag label for the microphone access section',
      args: [],
    );
  }

  /// `Microphone Access`
  String get microphoneAccessTitle {
    return Intl.message(
      'Microphone Access',
      name: 'microphoneAccessTitle',
      desc: 'The title for the microphone access section',
      args: [],
    );
  }

  /// `Microphone access is only used while you are actively recording a voice translation.`
  String get microphoneAccessContent {
    return Intl.message(
      'Microphone access is only used while you are actively recording a voice translation.',
      name: 'microphoneAccessContent',
      desc: 'The content for the microphone access section',
      args: [],
    );
  }

  /// `Audio is processed in real time and not stored after translation.`
  String get microphoneBullet1 {
    return Intl.message(
      'Audio is processed in real time and not stored after translation.',
      name: 'microphoneBullet1',
      desc: 'First bullet point for the microphone access section',
      args: [],
    );
  }

  /// `You can revoke microphone permission anytime from your device settings.`
  String get microphoneBullet2 {
    return Intl.message(
      'You can revoke microphone permission anytime from your device settings.',
      name: 'microphoneBullet2',
      desc: 'Second bullet point for the microphone access section',
      args: [],
    );
  }

  /// `DATA SHARING`
  String get dataSharingTag {
    return Intl.message(
      'DATA SHARING',
      name: 'dataSharingTag',
      desc: 'The tag label for the third-party section',
      args: [],
    );
  }

  /// `Third-Party Services`
  String get thirdPartyTitle {
    return Intl.message(
      'Third-Party Services',
      name: 'thirdPartyTitle',
      desc: 'The title for the third-party section',
      args: [],
    );
  }

  /// `We use trusted third-party services strictly for translation processing and app functionality. We do not sell your personal data.`
  String get thirdPartyContent {
    return Intl.message(
      'We use trusted third-party services strictly for translation processing and app functionality. We do not sell your personal data.',
      name: 'thirdPartyContent',
      desc: 'The content for the third-party section',
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
