import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sdk_test/flutter_sdk_test.dart';
import 'package:flutter_sdk_test/flutter_sdk_test_platform_interface.dart';
import 'package:flutter_sdk_test/flutter_sdk_test_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterSdkTestPlatform
    with MockPlatformInterfaceMixin
    implements FlutterSdkTestPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterSdkTestPlatform initialPlatform =
      FlutterSdkTestPlatform.instance;

  test('$MethodChannelFlutterSdkTest is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterSdkTest>());
  });

  test('getPlatformVersion', () async {
    FlutterSdkTest flutterSdkTestPlugin = FlutterSdkTest();
    MockFlutterSdkTestPlatform fakePlatform = MockFlutterSdkTestPlatform();
    FlutterSdkTestPlatform.instance = fakePlatform;

    expect(await flutterSdkTestPlugin.getPlatformVersion(), '42');
  });
}
