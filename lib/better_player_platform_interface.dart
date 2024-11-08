import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'better_player_method_channel.dart';

abstract class BetterPlayerPlatform extends PlatformInterface {
  /// Constructs a BetterPlayerPlatform.
  BetterPlayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static BetterPlayerPlatform _instance = MethodChannelBetterPlayer();

  /// The default instance of [BetterPlayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelBetterPlayer].
  static BetterPlayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BetterPlayerPlatform] when
  /// they register themselves.
  static set instance(BetterPlayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
