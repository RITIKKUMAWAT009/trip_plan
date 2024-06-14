//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <paystack_manager_package/paystack_manager_package_plugin.h>
#include <smart_auth/smart_auth_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) paystack_manager_package_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PaystackManagerPackagePlugin");
  paystack_manager_package_plugin_register_with_registrar(paystack_manager_package_registrar);
  g_autoptr(FlPluginRegistrar) smart_auth_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SmartAuthPlugin");
  smart_auth_plugin_register_with_registrar(smart_auth_registrar);
}
