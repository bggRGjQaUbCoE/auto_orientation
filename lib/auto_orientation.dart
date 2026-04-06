import 'package:flutter/services.dart';

// Class that provides different modes
// to rotate the device programmatically either landscape or portrait
class AutoOrientation {
  static const MethodChannel _channel = MethodChannel('auto_orientation');

  // rotate the device to landscape left mode
  static Future<void> landscapeLeftMode() async {
    try {
      await _channel.invokeMethod('setLandscapeLeft');
    } on MissingPluginException catch (_) {
      return;
    }
  }

  // rotate the device to landscape right mode
  static Future<void> landscapeRightMode() async {
    try {
      await _channel.invokeMethod('setLandscapeRight');
    } on MissingPluginException catch (_) {
      return;
    }
  }

  // rotate the device to portrait up mode
  static Future<void> portraitUpMode() async {
    try {
      await _channel.invokeMethod('setPortraitUp');
    } on MissingPluginException catch (_) {
      return;
    }
  }

  // rotate the device to portrait down mode
  static Future<void> portraitDownMode() async {
    try {
      await _channel.invokeMethod('setPortraitDown');
    } on MissingPluginException catch (_) {
      return;
    }
  }

  // rotate the device to portrait auto mode
  static Future<void> portraitAutoMode({bool forceSensor = false}) async {
    try {
      await _channel
          .invokeMethod('setPortraitAuto', {'forceSensor': forceSensor});
    } on MissingPluginException catch (_) {
      return;
    }
  }

  // rotate the device to landscape auto mode
  static Future<void> landscapeAutoMode({bool forceSensor = false}) async {
    try {
      await _channel
          .invokeMethod('setLandscapeAuto', {'forceSensor': forceSensor});
    } on MissingPluginException catch (_) {
      return;
    }
  }

  // rotate the device to landscape auto mode
  static Future<void> fullAutoMode({bool forceSensor = false}) async {
    try {
      await _channel.invokeMethod('setAuto', {'forceSensor': forceSensor});
    } on MissingPluginException catch (_) {
      return;
    }
  }

  static Future<void> setScreenOrientationUser() async {
    try {
      await _channel.invokeMethod('setScreenOrientationUser');
    } on MissingPluginException catch (_) {
      return;
    }
  }
}
