#include "include/better_player/better_player_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "better_player_plugin.h"

void BetterPlayerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  better_player::BetterPlayerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
