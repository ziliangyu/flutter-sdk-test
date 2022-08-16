import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_sdk_test_platform_interface.dart';

/// An implementation of [FlutterSdkTestPlatform] that uses method channels.
class MethodChannelFlutterSdkTest extends FlutterSdkTestPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_sdk_test');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
