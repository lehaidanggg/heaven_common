import 'package:flutter_test/flutter_test.dart';
import 'package:heaven_common/heaven_common.dart';
import 'package:heaven_common/heaven_common_platform_interface.dart';
import 'package:heaven_common/heaven_common_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHeavenCommonPlatform
    with MockPlatformInterfaceMixin
    implements HeavenCommonPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HeavenCommonPlatform initialPlatform = HeavenCommonPlatform.instance;

  test('$MethodChannelHeavenCommon is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHeavenCommon>());
  });

  test('getPlatformVersion', () async {
    HeavenCommon heavenCommonPlugin = HeavenCommon();
    MockHeavenCommonPlatform fakePlatform = MockHeavenCommonPlatform();
    HeavenCommonPlatform.instance = fakePlatform;

    expect(await heavenCommonPlugin.getPlatformVersion(), '42');
  });
}
