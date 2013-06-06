part of admin_directory_v1_api_console;

/** Client to access the admin directory_v1 API */
/** Apps Directory API lets you view and manage enterprise resources like user, groups, OrgUnit, devices. */
class Admin extends ConsoleClient {

  ChromeosdevicesResource_ _chromeosdevices;
  ChromeosdevicesResource_ get chromeosdevices => _chromeosdevices;
  GroupsResource_ _groups;
  GroupsResource_ get groups => _groups;
  MembersResource_ _members;
  MembersResource_ get members => _members;
  MobiledevicesResource_ _mobiledevices;
  MobiledevicesResource_ get mobiledevices => _mobiledevices;
  OrgunitsResource_ _orgunits;
  OrgunitsResource_ get orgunits => _orgunits;
  UsersResource_ _users;
  UsersResource_ get users => _users;

  /** OAuth Scope2: View and manage your Chrome OS devices' metadata */
  static const core.String ADMIN_DIRECTORY_DEVICE_CHROMEOS_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.chromeos";

  /** OAuth Scope2: View your Chrome OS devices' metadata */
  static const core.String ADMIN_DIRECTORY_DEVICE_CHROMEOS_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly";

  /** OAuth Scope2: View and manage your mobile devices' metadata */
  static const core.String ADMIN_DIRECTORY_DEVICE_MOBILE_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.mobile";

  /** OAuth Scope2: Manage your mobile devices by performing administrative tasks */
  static const core.String ADMIN_DIRECTORY_DEVICE_MOBILE_ACTION_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.mobile.action";

  /** OAuth Scope2: View your mobile devices' metadata */
  static const core.String ADMIN_DIRECTORY_DEVICE_MOBILE_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly";

  /** OAuth Scope2: View and manage the provisioning of groups on your domain */
  static const core.String ADMIN_DIRECTORY_GROUP_SCOPE = "https://www.googleapis.com/auth/admin.directory.group";

  /** OAuth Scope2: View and manage group subscriptions on your domain */
  static const core.String ADMIN_DIRECTORY_GROUP_MEMBER_SCOPE = "https://www.googleapis.com/auth/admin.directory.group.member";

  /** OAuth Scope2: View group subscriptions on your domain */
  static const core.String ADMIN_DIRECTORY_GROUP_MEMBER_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.group.member.readonly";

  /** OAuth Scope2: View groups on your domain */
  static const core.String ADMIN_DIRECTORY_GROUP_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.group.readonly";

  /** OAuth Scope2: View and manage organization units on your domain */
  static const core.String ADMIN_DIRECTORY_ORGUNIT_SCOPE = "https://www.googleapis.com/auth/admin.directory.orgunit";

  /** OAuth Scope2: View organization units on your domain */
  static const core.String ADMIN_DIRECTORY_ORGUNIT_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.orgunit.readonly";

  /** OAuth Scope2: View and manage the provisioning of users on your domain */
  static const core.String ADMIN_DIRECTORY_USER_SCOPE = "https://www.googleapis.com/auth/admin.directory.user";

  /** OAuth Scope2: View and manage user aliases on your domain */
  static const core.String ADMIN_DIRECTORY_USER_ALIAS_SCOPE = "https://www.googleapis.com/auth/admin.directory.user.alias";

  /** OAuth Scope2: View user aliases on your domain */
  static const core.String ADMIN_DIRECTORY_USER_ALIAS_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.user.alias.readonly";

  /** OAuth Scope2: View users on your domain */
  static const core.String ADMIN_DIRECTORY_USER_READONLY_SCOPE = "https://www.googleapis.com/auth/admin.directory.user.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Admin([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/admin/directory/v1/";
    rootUrl = "https://www.googleapis.com/";
    _chromeosdevices = new ChromeosdevicesResource_(this);
    _groups = new GroupsResource_(this);
    _members = new MembersResource_(this);
    _mobiledevices = new MobiledevicesResource_(this);
    _orgunits = new OrgunitsResource_(this);
    _users = new UsersResource_(this);
  }
}
