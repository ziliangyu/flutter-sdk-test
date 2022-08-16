import 'flutter_sdk_test_platform_interface.dart';

class FlutterSdkTest {
  Future<String?> getPlatformVersion() {
    return FlutterSdkTestPlatform.instance.getPlatformVersion();
  }
}
