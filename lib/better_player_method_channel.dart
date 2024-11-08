import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'better_player_platform_interface.dart';

/// An implementation of [BetterPlayerPlatform] that uses method channels.
class MethodChannelBetterPlayer extends BetterPlayerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('better_player');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
