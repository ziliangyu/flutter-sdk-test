import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_sdk_test_method_channel.dart';

abstract class FlutterSdkTestPlatform extends PlatformInterface {
  /// Constructs a FlutterSdkTestPlatform.
  FlutterSdkTestPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSdkTestPlatform _instance = MethodChannelFlutterSdkTest();

  /// The default instance of [FlutterSdkTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSdkTest].
  static FlutterSdkTestPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSdkTestPlatform] when
  /// they register themselves.
  static set instance(FlutterSdkTestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
