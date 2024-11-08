
import 'better_player_platform_interface.dart';

class BetterPlayer {
  Future<String?> getPlatformVersion() {
    return BetterPlayerPlatform.instance.getPlatformVersion();
  }
}
