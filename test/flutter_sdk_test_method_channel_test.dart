import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sdk_test/flutter_sdk_test_method_channel.dart';

void main() {
  MethodChannelFlutterSdkTest platform = MethodChannelFlutterSdkTest();
  const MethodChannel channel = MethodChannel('flutter_sdk_test');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
