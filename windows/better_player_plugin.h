#ifndef FLUTTER_PLUGIN_BETTER_PLAYER_PLUGIN_H_
#define FLUTTER_PLUGIN_BETTER_PLAYER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace better_player {

class BetterPlayerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BetterPlayerPlugin();

  virtual ~BetterPlayerPlugin();

  // Disallow copy and assign.
  BetterPlayerPlugin(const BetterPlayerPlugin&) = delete;
  BetterPlayerPlugin& operator=(const BetterPlayerPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace better_player

#endif  // FLUTTER_PLUGIN_BETTER_PLAYER_PLUGIN_H_
