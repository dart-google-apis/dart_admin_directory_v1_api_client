library admin_directory_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_admin_directory_v1_api/src/console_client.dart';

import "package:google_admin_directory_v1_api/admin_directory_v1_api_client.dart";

/** The Admin SDK Directory API lets you view and manage enterprise resources such as users and groups, administrative notifications, security features, and more. */
@deprecated
class Admin extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your Chrome OS devices' metadata */
  static const String ADMIN_DIRECTORY_DEVICE_CHROMEOS_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.chromeos";

  /** OAuth Scope2: View your Chrome OS devices' metadata */
  static const String ADMIN_DIRECTORY_DEVICE_CHROMEOS_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly";

  /** OAuth Scope2: View and manage your mobile devices' metadata */
  static const String ADMIN_DIRECTORY_DEVICE_MOBILE_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.mobile";

  /** OAuth Scope2: Manage your mobile devices by performing administrative tasks */
  static const String ADMIN_DIRECTORY_DEVICE_MOBILE_ACTION_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.mobile.action";

  /** OAuth Scope2: View your mobile devices' metadata */
  static const String ADMIN_DIRECTORY_DEVICE_MOBILE_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly";

  /** OAuth Scope2: View and manage the provisioning of groups on your domain */
  static const String ADMIN_DIRECTORY_GROUP_SCOPE = "https://www.googleapis.com/auth/admin.directory.group";

  /** OAuth Scope2: View and manage group subscriptions on your domain */
  static const String ADMIN_DIRECTORY_GROUP_MEMBER_SCOPE = "https://www.googleapis.com/auth/admin.directory.group.member";

  /** OAuth Scope2: View group subscriptions on your domain */
  static const String ADMIN_DIRECTORY_GROUP_MEMBER_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.group.member.readonly";

  /** OAuth Scope2: View groups on your domain */
  static const String ADMIN_DIRECTORY_GROUP_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.group.readonly";

  /** OAuth Scope2: View and manage notifications received on your domain */
  static const String ADMIN_DIRECTORY_NOTIFICATIONS_SCOPE = "https://www.googleapis.com/auth/admin.directory.notifications";

  /** OAuth Scope2: View and manage organization units on your domain */
  static const String ADMIN_DIRECTORY_ORGUNIT_SCOPE = "https://www.googleapis.com/auth/admin.directory.orgunit";

  /** OAuth Scope2: View organization units on your domain */
  static const String ADMIN_DIRECTORY_ORGUNIT_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.orgunit.readonly";

  /** OAuth Scope2: View and manage the provisioning of users on your domain */
  static const String ADMIN_DIRECTORY_USER_SCOPE = "https://www.googleapis.com/auth/admin.directory.user";

  /** OAuth Scope2: View and manage user aliases on your domain */
  static const String ADMIN_DIRECTORY_USER_ALIAS_SCOPE = "https://www.googleapis.com/auth/admin.directory.user.alias";

  /** OAuth Scope2: View user aliases on your domain */
  static const String ADMIN_DIRECTORY_USER_ALIAS_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.user.alias.readonly";

  /** OAuth Scope2: View users on your domain */
  static const String ADMIN_DIRECTORY_USER_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.user.readonly";

  /** OAuth Scope2: Manage data access permissions for users on your domain */
  static const String ADMIN_DIRECTORY_USER_SECURITY_SCOPE = "https://www.googleapis.com/auth/admin.directory.user.security";

  final oauth2.OAuth2Console auth;

  Admin([oauth2.OAuth2Console this.auth]);
}
