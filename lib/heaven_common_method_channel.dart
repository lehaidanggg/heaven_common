import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'heaven_common_platform_interface.dart';

/// An implementation of [HeavenCommonPlatform] that uses method channels.
class MethodChannelHeavenCommon extends HeavenCommonPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('heaven_common');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
