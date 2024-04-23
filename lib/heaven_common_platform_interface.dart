import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'heaven_common_method_channel.dart';

abstract class HeavenCommonPlatform extends PlatformInterface {
  /// Constructs a HeavenCommonPlatform.
  HeavenCommonPlatform() : super(token: _token);

  static final Object _token = Object();

  static HeavenCommonPlatform _instance = MethodChannelHeavenCommon();

  /// The default instance of [HeavenCommonPlatform] to use.
  ///
  /// Defaults to [MethodChannelHeavenCommon].
  static HeavenCommonPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HeavenCommonPlatform] when
  /// they register themselves.
  static set instance(HeavenCommonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
