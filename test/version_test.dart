import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:androidversion/version.dart';

void main() {
  const MethodChannel channel = MethodChannel('com.emekalites.androidversion/version');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return null;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getAndroidVersion', () async {
    expect(await AndroidInfo.version, null);
  });
}
