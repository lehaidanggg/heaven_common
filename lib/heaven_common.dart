
import 'heaven_common_platform_interface.dart';

class HeavenCommon {
  Future<String?> getPlatformVersion() {
    return HeavenCommonPlatform.instance.getPlatformVersion();
  }
}
