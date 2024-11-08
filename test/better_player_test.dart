import 'package:flutter_test/flutter_test.dart';
import 'package:better_player/better_player.dart';
import 'package:better_player/better_player_platform_interface.dart';
import 'package:better_player/better_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBetterPlayerPlatform
    with MockPlatformInterfaceMixin
    implements BetterPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BetterPlayerPlatform initialPlatform = BetterPlayerPlatform.instance;

  test('$MethodChannelBetterPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBetterPlayer>());
  });

  test('getPlatformVersion', () async {
    BetterPlayer betterPlayerPlugin = BetterPlayer();
    MockBetterPlayerPlatform fakePlatform = MockBetterPlayerPlatform();
    BetterPlayerPlatform.instance = fakePlatform;

    expect(await betterPlayerPlugin.getPlatformVersion(), '42');
  });
}
