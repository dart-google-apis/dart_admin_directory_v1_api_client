part of admin_directory_v1_api;

/** JSON template for Alias object in Apps Directory API. */
class Alias {

  /** A alias email */
  core.String alias;

  /** Unique id of the group (Read-only) Unique id of the user (Read-only) */
  core.String id;

  /** Kind of resource this is. */
  core.String kind;

  /** Group's primary email (Read-only) User's primary email (Read-only) */
  core.String primaryEmail;

  /** Create new Alias from JSON data */
  Alias.fromJson(core.Map json) {
    if (json.containsKey("alias")) {
      alias = json["alias"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("primaryEmail")) {
      primaryEmail = json["primaryEmail"];
    }
  }

  /** Create JSON Object for Alias */
  core.Map toJson() {
    var output = new core.Map();

    if (alias != null) {
      output["alias"] = alias;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (primaryEmail != null) {
      output["primaryEmail"] = primaryEmail;
    }

    return output;
  }

  /** Return String representation of Alias */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON response template to list aliases in Apps Directory API. */
class Aliases {

  /** List of alias objects. */
  core.List<Alias> aliases;

  /** Kind of resource this is. */
  core.String kind;

  /** Create new Aliases from JSON data */
  Aliases.fromJson(core.Map json) {
    if (json.containsKey("aliases")) {
      aliases = json["aliases"].map((aliasesItem) => new Alias.fromJson(aliasesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Aliases */
  core.Map toJson() {
    var output = new core.Map();

    if (aliases != null) {
      output["aliases"] = aliases.map((aliasesItem) => aliasesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Aliases */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Chrome Os Device resource in Apps Directory API. */
class ChromeOsDevice {

  /** Address or location of the device as noted by the administrator */
  core.String annotatedLocation;

  /** User of the device */
  core.String annotatedUser;

  /** Chromebook boot mode (Read-only) */
  core.String bootMode;

  /** Unique identifier of Chrome OS Device (Read-only) */
  core.String deviceId;

  /** Chromebook firmware version (Read-only) */
  core.String firmwareVersion;

  /** Kind of resource this is. */
  core.String kind;

  /** Date and time the device was last enrolled (Read-only) */
  core.String lastEnrollmentTime;

  /** Date and time the device was last synchronized with the policy settings in the Google Apps administrator control panel (Read-only) */
  core.String lastSync;

  /** Chromebook Mac Address (Read-only) */
  core.String macAddress;

  /** Mobile Equipment identifier for the 3G mobile card in the Chromebook (Read-only) */
  core.String meid;

  /** Chromebook Model (Read-only) */
  core.String model;

  /** Notes added by the administrator */
  core.String notes;

  /** Chromebook order number (Read-only) */
  core.String orderNumber;

  /** OrgUnit of the device */
  core.String orgUnitPath;

  /** Chromebook Os Version (Read-only) */
  core.String osVersion;

  /** Chromebook platform version (Read-only) */
  core.String platformVersion;

  /** Chromebook serial number (Read-only) */
  core.String serialNumber;

  /** status of the device (Read-only) */
  core.String status;

  /** Final date the device will be supported (Read-only) */
  core.String supportEndDate;

  /** Will Chromebook auto reniew after support end date (Read-only) */
  core.bool willAutoRenew;

  /** Create new ChromeOsDevice from JSON data */
  ChromeOsDevice.fromJson(core.Map json) {
    if (json.containsKey("annotatedLocation")) {
      annotatedLocation = json["annotatedLocation"];
    }
    if (json.containsKey("annotatedUser")) {
      annotatedUser = json["annotatedUser"];
    }
    if (json.containsKey("bootMode")) {
      bootMode = json["bootMode"];
    }
    if (json.containsKey("deviceId")) {
      deviceId = json["deviceId"];
    }
    if (json.containsKey("firmwareVersion")) {
      firmwareVersion = json["firmwareVersion"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastEnrollmentTime")) {
      lastEnrollmentTime = json["lastEnrollmentTime"];
    }
    if (json.containsKey("lastSync")) {
      lastSync = json["lastSync"];
    }
    if (json.containsKey("macAddress")) {
      macAddress = json["macAddress"];
    }
    if (json.containsKey("meid")) {
      meid = json["meid"];
    }
    if (json.containsKey("model")) {
      model = json["model"];
    }
    if (json.containsKey("notes")) {
      notes = json["notes"];
    }
    if (json.containsKey("orderNumber")) {
      orderNumber = json["orderNumber"];
    }
    if (json.containsKey("orgUnitPath")) {
      orgUnitPath = json["orgUnitPath"];
    }
    if (json.containsKey("osVersion")) {
      osVersion = json["osVersion"];
    }
    if (json.containsKey("platformVersion")) {
      platformVersion = json["platformVersion"];
    }
    if (json.containsKey("serialNumber")) {
      serialNumber = json["serialNumber"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("supportEndDate")) {
      supportEndDate = json["supportEndDate"];
    }
    if (json.containsKey("willAutoRenew")) {
      willAutoRenew = json["willAutoRenew"];
    }
  }

  /** Create JSON Object for ChromeOsDevice */
  core.Map toJson() {
    var output = new core.Map();

    if (annotatedLocation != null) {
      output["annotatedLocation"] = annotatedLocation;
    }
    if (annotatedUser != null) {
      output["annotatedUser"] = annotatedUser;
    }
    if (bootMode != null) {
      output["bootMode"] = bootMode;
    }
    if (deviceId != null) {
      output["deviceId"] = deviceId;
    }
    if (firmwareVersion != null) {
      output["firmwareVersion"] = firmwareVersion;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastEnrollmentTime != null) {
      output["lastEnrollmentTime"] = lastEnrollmentTime;
    }
    if (lastSync != null) {
      output["lastSync"] = lastSync;
    }
    if (macAddress != null) {
      output["macAddress"] = macAddress;
    }
    if (meid != null) {
      output["meid"] = meid;
    }
    if (model != null) {
      output["model"] = model;
    }
    if (notes != null) {
      output["notes"] = notes;
    }
    if (orderNumber != null) {
      output["orderNumber"] = orderNumber;
    }
    if (orgUnitPath != null) {
      output["orgUnitPath"] = orgUnitPath;
    }
    if (osVersion != null) {
      output["osVersion"] = osVersion;
    }
    if (platformVersion != null) {
      output["platformVersion"] = platformVersion;
    }
    if (serialNumber != null) {
      output["serialNumber"] = serialNumber;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (supportEndDate != null) {
      output["supportEndDate"] = supportEndDate;
    }
    if (willAutoRenew != null) {
      output["willAutoRenew"] = willAutoRenew;
    }

    return output;
  }

  /** Return String representation of ChromeOsDevice */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON response template for List Chrome OS Devices operation in Apps Directory API. */
class ChromeOsDevices {

  /** List of Chrome OS Device objects. */
  core.List<ChromeOsDevice> chromeosdevices;

  /** Kind of resource this is. */
  core.String kind;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Create new ChromeOsDevices from JSON data */
  ChromeOsDevices.fromJson(core.Map json) {
    if (json.containsKey("chromeosdevices")) {
      chromeosdevices = json["chromeosdevices"].map((chromeosdevicesItem) => new ChromeOsDevice.fromJson(chromeosdevicesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ChromeOsDevices */
  core.Map toJson() {
    var output = new core.Map();

    if (chromeosdevices != null) {
      output["chromeosdevices"] = chromeosdevices.map((chromeosdevicesItem) => chromeosdevicesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ChromeOsDevices */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Group resource in Apps Directory API. */
class Group {

  /** Is the group created by admin (Read-only) * */
  core.bool adminCreated;

  /** List of aliases (Read-only) */
  core.List<core.String> aliases;

  /** Description of the group */
  core.String description;

  /** Email of Group */
  core.String email;

  /** Unique identifier of Group (Read-only) */
  core.String id;

  /** Kind of resource this is. */
  core.String kind;

  /** Group name */
  core.String name;

  /** List of non editable aliases (Read-only) */
  core.List<core.String> nonEditableAliases;

  /** Create new Group from JSON data */
  Group.fromJson(core.Map json) {
    if (json.containsKey("adminCreated")) {
      adminCreated = json["adminCreated"];
    }
    if (json.containsKey("aliases")) {
      aliases = json["aliases"].toList();
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("nonEditableAliases")) {
      nonEditableAliases = json["nonEditableAliases"].toList();
    }
  }

  /** Create JSON Object for Group */
  core.Map toJson() {
    var output = new core.Map();

    if (adminCreated != null) {
      output["adminCreated"] = adminCreated;
    }
    if (aliases != null) {
      output["aliases"] = aliases.toList();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (nonEditableAliases != null) {
      output["nonEditableAliases"] = nonEditableAliases.toList();
    }

    return output;
  }

  /** Return String representation of Group */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON response template for List Groups operation in Apps Directory API. */
class Groups {

  /** List of group objects. */
  core.List<Group> groups;

  /** Kind of resource this is. */
  core.String kind;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Create new Groups from JSON data */
  Groups.fromJson(core.Map json) {
    if (json.containsKey("groups")) {
      groups = json["groups"].map((groupsItem) => new Group.fromJson(groupsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Groups */
  core.Map toJson() {
    var output = new core.Map();

    if (groups != null) {
      output["groups"] = groups.map((groupsItem) => groupsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Groups */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Member resource in Apps Directory API. */
class Member {

  /** Email of member (Read-only) */
  core.String email;

  /** Unique identifier of customer member (Read-only) Unique identifier of group (Read-only) Unique identifier of member (Read-only) */
  core.String id;

  /** Kind of resource this is. */
  core.String kind;

  /** Role of member */
  core.String role;

  /** Type of member (Immutable) */
  core.String type;

  /** Create new Member from JSON data */
  Member.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Member */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Member */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON response template for List Members operation in Apps Directory API. */
class Members {

  /** Kind of resource this is. */
  core.String kind;

  /** List of member objects. */
  core.List<Member> members;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Create new Members from JSON data */
  Members.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("members")) {
      members = json["members"].map((membersItem) => new Member.fromJson(membersItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for Members */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (members != null) {
      output["members"] = members.map((membersItem) => membersItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of Members */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Mobile Device resource in Apps Directory API. */
class MobileDevice {

  /** List of applications installed on Mobile Device */
  core.List<MobileDeviceApplications> applications;

  /** Mobile Device serial number (Read-only) */
  core.String deviceId;

  /** List of owner user's email addresses (Read-only) */
  core.List<core.String> email;

  /** Date and time the device was first synchronized with the policy settings in the Google Apps administrator control panel (Read-only) */
  core.String firstSync;

  /** Mobile Device Hardware Id (Read-only) */
  core.String hardwareId;

  /** Kind of resource this is. */
  core.String kind;

  /** Date and time the device was last synchronized with the policy settings in the Google Apps administrator control panel (Read-only) */
  core.String lastSync;

  /** Name of the model of the device */
  core.String model;

  /** List of owner user's names (Read-only) */
  core.List<core.String> name;

  /** Name of the mobile operating system */
  core.String os;

  /** Unique identifier of Mobile Device (Read-only) */
  core.String resourceId;

  /** Status of the device (Read-only) */
  core.String status;

  /** The type of device (Read-only) */
  core.String type;

  /** Mobile Device user agent */
  core.String userAgent;

  /** Create new MobileDevice from JSON data */
  MobileDevice.fromJson(core.Map json) {
    if (json.containsKey("applications")) {
      applications = json["applications"].map((applicationsItem) => new MobileDeviceApplications.fromJson(applicationsItem)).toList();
    }
    if (json.containsKey("deviceId")) {
      deviceId = json["deviceId"];
    }
    if (json.containsKey("email")) {
      email = json["email"].toList();
    }
    if (json.containsKey("firstSync")) {
      firstSync = json["firstSync"];
    }
    if (json.containsKey("hardwareId")) {
      hardwareId = json["hardwareId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastSync")) {
      lastSync = json["lastSync"];
    }
    if (json.containsKey("model")) {
      model = json["model"];
    }
    if (json.containsKey("name")) {
      name = json["name"].toList();
    }
    if (json.containsKey("os")) {
      os = json["os"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = json["resourceId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("userAgent")) {
      userAgent = json["userAgent"];
    }
  }

  /** Create JSON Object for MobileDevice */
  core.Map toJson() {
    var output = new core.Map();

    if (applications != null) {
      output["applications"] = applications.map((applicationsItem) => applicationsItem.toJson()).toList();
    }
    if (deviceId != null) {
      output["deviceId"] = deviceId;
    }
    if (email != null) {
      output["email"] = email.toList();
    }
    if (firstSync != null) {
      output["firstSync"] = firstSync;
    }
    if (hardwareId != null) {
      output["hardwareId"] = hardwareId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastSync != null) {
      output["lastSync"] = lastSync;
    }
    if (model != null) {
      output["model"] = model;
    }
    if (name != null) {
      output["name"] = name.toList();
    }
    if (os != null) {
      output["os"] = os;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (userAgent != null) {
      output["userAgent"] = userAgent;
    }

    return output;
  }

  /** Return String representation of MobileDevice */
  core.String toString() => JSON.stringify(this.toJson());

}

class MobileDeviceApplications {

  /** Display name of application */
  core.String displayName;

  /** Package name of application */
  core.String packageName;

  /** List of Permissions for application */
  core.List<core.String> permission;

  /** Version code of application */
  core.int versionCode;

  /** Version name of application */
  core.String versionName;

  /** Create new MobileDeviceApplications from JSON data */
  MobileDeviceApplications.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("packageName")) {
      packageName = json["packageName"];
    }
    if (json.containsKey("permission")) {
      permission = json["permission"].toList();
    }
    if (json.containsKey("versionCode")) {
      versionCode = json["versionCode"];
    }
    if (json.containsKey("versionName")) {
      versionName = json["versionName"];
    }
  }

  /** Create JSON Object for MobileDeviceApplications */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (packageName != null) {
      output["packageName"] = packageName;
    }
    if (permission != null) {
      output["permission"] = permission.toList();
    }
    if (versionCode != null) {
      output["versionCode"] = versionCode;
    }
    if (versionName != null) {
      output["versionName"] = versionName;
    }

    return output;
  }

  /** Return String representation of MobileDeviceApplications */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON request template for firing commands on Mobile Device in Apps Directory Devices API. */
class MobileDeviceAction {

  /** Action to be taken on the Mobile Device */
  core.String action;

  /** Create new MobileDeviceAction from JSON data */
  MobileDeviceAction.fromJson(core.Map json) {
    if (json.containsKey("action")) {
      action = json["action"];
    }
  }

  /** Create JSON Object for MobileDeviceAction */
  core.Map toJson() {
    var output = new core.Map();

    if (action != null) {
      output["action"] = action;
    }

    return output;
  }

  /** Return String representation of MobileDeviceAction */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON response template for List Mobile Devices operation in Apps Directory API. */
class MobileDevices {

  /** Kind of resource this is. */
  core.String kind;

  /** List of Mobile Device objects. */
  core.List<MobileDevice> mobiledevices;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Create new MobileDevices from JSON data */
  MobileDevices.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mobiledevices")) {
      mobiledevices = json["mobiledevices"].map((mobiledevicesItem) => new MobileDevice.fromJson(mobiledevicesItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for MobileDevices */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (mobiledevices != null) {
      output["mobiledevices"] = mobiledevices.map((mobiledevicesItem) => mobiledevicesItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of MobileDevices */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Org Unit resource in Apps Directory API. */
class OrgUnit {

  /** Should block inheritance */
  core.bool blockInheritance;

  /** Description of OrgUnit */
  core.String description;

  /** Kind of resource this is. */
  core.String kind;

  /** Name of OrgUnit */
  core.String name;

  /** Path of OrgUnit */
  core.String orgUnitPath;

  /** Path of parent OrgUnit */
  core.String parentOrgUnitPath;

  /** Create new OrgUnit from JSON data */
  OrgUnit.fromJson(core.Map json) {
    if (json.containsKey("blockInheritance")) {
      blockInheritance = json["blockInheritance"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("orgUnitPath")) {
      orgUnitPath = json["orgUnitPath"];
    }
    if (json.containsKey("parentOrgUnitPath")) {
      parentOrgUnitPath = json["parentOrgUnitPath"];
    }
  }

  /** Create JSON Object for OrgUnit */
  core.Map toJson() {
    var output = new core.Map();

    if (blockInheritance != null) {
      output["blockInheritance"] = blockInheritance;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (orgUnitPath != null) {
      output["orgUnitPath"] = orgUnitPath;
    }
    if (parentOrgUnitPath != null) {
      output["parentOrgUnitPath"] = parentOrgUnitPath;
    }

    return output;
  }

  /** Return String representation of OrgUnit */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON response template for List Organization Units operation in Apps Directory API. */
class OrgUnits {

  /** Kind of resource this is. */
  core.String kind;

  /** List of user objects. */
  core.List<OrgUnit> organizationUnits;

  /** Create new OrgUnits from JSON data */
  OrgUnits.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("organizationUnits")) {
      organizationUnits = json["organizationUnits"].map((organizationUnitsItem) => new OrgUnit.fromJson(organizationUnitsItem)).toList();
    }
  }

  /** Create JSON Object for OrgUnits */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (organizationUnits != null) {
      output["organizationUnits"] = organizationUnits.map((organizationUnitsItem) => organizationUnitsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of OrgUnits */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for User object in Apps Directory API. */
class User {

  /** Addresses of User */
  core.List<UserAddress> addresses;

  /** Indicates if user has agreed to terms (Read-only) */
  core.bool agreedToTerms;

  /** List of aliases (Read-only) */
  core.List<core.String> aliases;

  /** Boolean indicating if the user should change password in next login */
  core.bool changePasswordAtNextLogin;

  /** User's Google account creation time. (Read-only) */
  core.String creationTime;

  /** CustomerId of User (Read-only) */
  core.String customerId;

  core.String deletionTime;

  /** Emails of User */
  core.List<UserEmail> emails;

  /** The external Ids of User * */
  core.List<UserExternalId> externalIds;

  /** Hash function name for password. Supported are MD5, SHA-1 and crypt */
  core.String hashFunction;

  /** Unique identifier of User (Read-only) */
  core.String id;

  /** User's Instant Messenger */
  core.List<UserIm> ims;

  /** Boolean indicating if user is included in Global Address List */
  core.bool includeInGlobalAddressList;

  /** Boolean indicating if ip is whitelisted */
  core.bool ipWhitelisted;

  /** Boolean indicating if the user is admin (Read-only) */
  core.bool isAdmin;

  /** Boolean indicating if the user is delegated admin (Read-only) */
  core.bool isDelegatedAdmin;

  /** Is mailbox setup (Read-only) */
  core.bool isMailboxSetup;

  /** Kind of resource this is. */
  core.String kind;

  /** User's last login time. (Read-only) */
  core.String lastLoginTime;

  /** User's name */
  UserName name;

  /** List of non editable aliases (Read-only) */
  core.List<core.String> nonEditableAliases;

  /** OrgUnit of User */
  core.String orgUnitPath;

  /** Organizations of User */
  core.List<UserOrganization> organizations;

  /** User's password */
  core.String password;

  /** Phone numbers of User */
  core.List<UserPhone> phones;

  /** username of User */
  core.String primaryEmail;

  /** The Relations of User * */
  core.List<UserRelation> relations;

  /** Indicates if user is suspended */
  core.bool suspended;

  /** Suspension reason if user is suspended (Read-only) */
  core.String suspensionReason;

  /** Photo Url of the user (Read-only) */
  core.String thumbnailPhotoUrl;

  /** Create new User from JSON data */
  User.fromJson(core.Map json) {
    if (json.containsKey("addresses")) {
      addresses = json["addresses"].map((addressesItem) => new UserAddress.fromJson(addressesItem)).toList();
    }
    if (json.containsKey("agreedToTerms")) {
      agreedToTerms = json["agreedToTerms"];
    }
    if (json.containsKey("aliases")) {
      aliases = json["aliases"].toList();
    }
    if (json.containsKey("changePasswordAtNextLogin")) {
      changePasswordAtNextLogin = json["changePasswordAtNextLogin"];
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("customerId")) {
      customerId = json["customerId"];
    }
    if (json.containsKey("deletionTime")) {
      deletionTime = json["deletionTime"];
    }
    if (json.containsKey("emails")) {
      emails = json["emails"].map((emailsItem) => new UserEmail.fromJson(emailsItem)).toList();
    }
    if (json.containsKey("externalIds")) {
      externalIds = json["externalIds"].map((externalIdsItem) => new UserExternalId.fromJson(externalIdsItem)).toList();
    }
    if (json.containsKey("hashFunction")) {
      hashFunction = json["hashFunction"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("ims")) {
      ims = json["ims"].map((imsItem) => new UserIm.fromJson(imsItem)).toList();
    }
    if (json.containsKey("includeInGlobalAddressList")) {
      includeInGlobalAddressList = json["includeInGlobalAddressList"];
    }
    if (json.containsKey("ipWhitelisted")) {
      ipWhitelisted = json["ipWhitelisted"];
    }
    if (json.containsKey("isAdmin")) {
      isAdmin = json["isAdmin"];
    }
    if (json.containsKey("isDelegatedAdmin")) {
      isDelegatedAdmin = json["isDelegatedAdmin"];
    }
    if (json.containsKey("isMailboxSetup")) {
      isMailboxSetup = json["isMailboxSetup"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastLoginTime")) {
      lastLoginTime = json["lastLoginTime"];
    }
    if (json.containsKey("name")) {
      name = new UserName.fromJson(json["name"]);
    }
    if (json.containsKey("nonEditableAliases")) {
      nonEditableAliases = json["nonEditableAliases"].toList();
    }
    if (json.containsKey("orgUnitPath")) {
      orgUnitPath = json["orgUnitPath"];
    }
    if (json.containsKey("organizations")) {
      organizations = json["organizations"].map((organizationsItem) => new UserOrganization.fromJson(organizationsItem)).toList();
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
    if (json.containsKey("phones")) {
      phones = json["phones"].map((phonesItem) => new UserPhone.fromJson(phonesItem)).toList();
    }
    if (json.containsKey("primaryEmail")) {
      primaryEmail = json["primaryEmail"];
    }
    if (json.containsKey("relations")) {
      relations = json["relations"].map((relationsItem) => new UserRelation.fromJson(relationsItem)).toList();
    }
    if (json.containsKey("suspended")) {
      suspended = json["suspended"];
    }
    if (json.containsKey("suspensionReason")) {
      suspensionReason = json["suspensionReason"];
    }
    if (json.containsKey("thumbnailPhotoUrl")) {
      thumbnailPhotoUrl = json["thumbnailPhotoUrl"];
    }
  }

  /** Create JSON Object for User */
  core.Map toJson() {
    var output = new core.Map();

    if (addresses != null) {
      output["addresses"] = addresses.map((addressesItem) => addressesItem.toJson()).toList();
    }
    if (agreedToTerms != null) {
      output["agreedToTerms"] = agreedToTerms;
    }
    if (aliases != null) {
      output["aliases"] = aliases.toList();
    }
    if (changePasswordAtNextLogin != null) {
      output["changePasswordAtNextLogin"] = changePasswordAtNextLogin;
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (customerId != null) {
      output["customerId"] = customerId;
    }
    if (deletionTime != null) {
      output["deletionTime"] = deletionTime;
    }
    if (emails != null) {
      output["emails"] = emails.map((emailsItem) => emailsItem.toJson()).toList();
    }
    if (externalIds != null) {
      output["externalIds"] = externalIds.map((externalIdsItem) => externalIdsItem.toJson()).toList();
    }
    if (hashFunction != null) {
      output["hashFunction"] = hashFunction;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (ims != null) {
      output["ims"] = ims.map((imsItem) => imsItem.toJson()).toList();
    }
    if (includeInGlobalAddressList != null) {
      output["includeInGlobalAddressList"] = includeInGlobalAddressList;
    }
    if (ipWhitelisted != null) {
      output["ipWhitelisted"] = ipWhitelisted;
    }
    if (isAdmin != null) {
      output["isAdmin"] = isAdmin;
    }
    if (isDelegatedAdmin != null) {
      output["isDelegatedAdmin"] = isDelegatedAdmin;
    }
    if (isMailboxSetup != null) {
      output["isMailboxSetup"] = isMailboxSetup;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastLoginTime != null) {
      output["lastLoginTime"] = lastLoginTime;
    }
    if (name != null) {
      output["name"] = name.toJson();
    }
    if (nonEditableAliases != null) {
      output["nonEditableAliases"] = nonEditableAliases.toList();
    }
    if (orgUnitPath != null) {
      output["orgUnitPath"] = orgUnitPath;
    }
    if (organizations != null) {
      output["organizations"] = organizations.map((organizationsItem) => organizationsItem.toJson()).toList();
    }
    if (password != null) {
      output["password"] = password;
    }
    if (phones != null) {
      output["phones"] = phones.map((phonesItem) => phonesItem.toJson()).toList();
    }
    if (primaryEmail != null) {
      output["primaryEmail"] = primaryEmail;
    }
    if (relations != null) {
      output["relations"] = relations.map((relationsItem) => relationsItem.toJson()).toList();
    }
    if (suspended != null) {
      output["suspended"] = suspended;
    }
    if (suspensionReason != null) {
      output["suspensionReason"] = suspensionReason;
    }
    if (thumbnailPhotoUrl != null) {
      output["thumbnailPhotoUrl"] = thumbnailPhotoUrl;
    }

    return output;
  }

  /** Return String representation of User */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for address. */
class UserAddress {

  /** Country. */
  core.String country;

  /** Country code. */
  core.String countryCode;

  /** Custom type. */
  core.String customType;

  /** Extended Address. */
  core.String extendedAddress;

  /** Formatted address (read-only field) */
  core.String formatted;

  /** Locality. */
  core.String locality;

  /** Other parts of address. */
  core.String poBox;

  /** Postal code. */
  core.String postalCode;

  /** If this is user's primary address. Only one entry could be marked as primary. */
  core.bool primary;

  /** Region. */
  core.String region;

  /** User supplied address was structured. Structured addresses are NOT supported at this time. You might be able to write structured addresses, but any values will eventually be clobbered. */
  core.bool sourceIsStructured;

  /** Street. */
  core.String streetAddress;

  /** Each entry can have a type which indicates standard values of that entry. For example address could be of home, work etc. In addition to the standard type, an entry can have a custom type and can take any value. Such type should have the CUSTOM value as type and also have a customType value. */
  core.String type;

  /** Create new UserAddress from JSON data */
  UserAddress.fromJson(core.Map json) {
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("countryCode")) {
      countryCode = json["countryCode"];
    }
    if (json.containsKey("customType")) {
      customType = json["customType"];
    }
    if (json.containsKey("extendedAddress")) {
      extendedAddress = json["extendedAddress"];
    }
    if (json.containsKey("formatted")) {
      formatted = json["formatted"];
    }
    if (json.containsKey("locality")) {
      locality = json["locality"];
    }
    if (json.containsKey("poBox")) {
      poBox = json["poBox"];
    }
    if (json.containsKey("postalCode")) {
      postalCode = json["postalCode"];
    }
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("sourceIsStructured")) {
      sourceIsStructured = json["sourceIsStructured"];
    }
    if (json.containsKey("streetAddress")) {
      streetAddress = json["streetAddress"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for UserAddress */
  core.Map toJson() {
    var output = new core.Map();

    if (country != null) {
      output["country"] = country;
    }
    if (countryCode != null) {
      output["countryCode"] = countryCode;
    }
    if (customType != null) {
      output["customType"] = customType;
    }
    if (extendedAddress != null) {
      output["extendedAddress"] = extendedAddress;
    }
    if (formatted != null) {
      output["formatted"] = formatted;
    }
    if (locality != null) {
      output["locality"] = locality;
    }
    if (poBox != null) {
      output["poBox"] = poBox;
    }
    if (postalCode != null) {
      output["postalCode"] = postalCode;
    }
    if (primary != null) {
      output["primary"] = primary;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (sourceIsStructured != null) {
      output["sourceIsStructured"] = sourceIsStructured;
    }
    if (streetAddress != null) {
      output["streetAddress"] = streetAddress;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of UserAddress */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an email. */
class UserEmail {

  /** Email id of the user. */
  core.String address;

  /** Custom Type. */
  core.String customType;

  /** If this is user's primary email. Only one entry could be marked as primary. */
  core.bool primary;

  /** Each entry can have a type which indicates standard types of that entry. For example email could be of home, work etc. In addition to the standard type, an entry can have a custom type and can take any value Such typess should have the CUSTOM value as type and also have a customType value. */
  core.String type;

  /** Create new UserEmail from JSON data */
  UserEmail.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("customType")) {
      customType = json["customType"];
    }
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for UserEmail */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }
    if (customType != null) {
      output["customType"] = customType;
    }
    if (primary != null) {
      output["primary"] = primary;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of UserEmail */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an externalId entry. */
class UserExternalId {

  /** Custom type. */
  core.String customType;

  /** The type of the Id. */
  core.String type;

  /** The value of the id. */
  core.String value;

  /** Create new UserExternalId from JSON data */
  UserExternalId.fromJson(core.Map json) {
    if (json.containsKey("customType")) {
      customType = json["customType"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for UserExternalId */
  core.Map toJson() {
    var output = new core.Map();

    if (customType != null) {
      output["customType"] = customType;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of UserExternalId */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for instant messenger of an user. */
class UserIm {

  /** Custom protocol. */
  core.String customProtocol;

  /** Custom type. */
  core.String customType;

  /** Instant messenger id. */
  core.String im;

  /** If this is user's priamry im. Only one entry could be marked as primary. */
  core.bool primary;

  /** Protocol used in the instant messenger. It should be one of the values from ImProtocolTypes map. Simalar to type, it can take a CUSTOM value and specify the custom name in customProtocol field. */
  core.String protocol;

  /** Each entry can have a type which indicates standard types of that entry. For example instant messengers could be of home, work etc. In addition to the standard type, an entry can have a custom type and can take any value. Such types should have the CUSTOM value as type and also have a customType value. */
  core.String type;

  /** Create new UserIm from JSON data */
  UserIm.fromJson(core.Map json) {
    if (json.containsKey("customProtocol")) {
      customProtocol = json["customProtocol"];
    }
    if (json.containsKey("customType")) {
      customType = json["customType"];
    }
    if (json.containsKey("im")) {
      im = json["im"];
    }
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("protocol")) {
      protocol = json["protocol"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for UserIm */
  core.Map toJson() {
    var output = new core.Map();

    if (customProtocol != null) {
      output["customProtocol"] = customProtocol;
    }
    if (customType != null) {
      output["customType"] = customType;
    }
    if (im != null) {
      output["im"] = im;
    }
    if (primary != null) {
      output["primary"] = primary;
    }
    if (protocol != null) {
      output["protocol"] = protocol;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of UserIm */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON request template for setting/revoking admin status of a user in Apps Directory API. */
class UserMakeAdmin {

  /** Boolean indicating new admin status of the user */
  core.bool status;

  /** Create new UserMakeAdmin from JSON data */
  UserMakeAdmin.fromJson(core.Map json) {
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for UserMakeAdmin */
  core.Map toJson() {
    var output = new core.Map();

    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of UserMakeAdmin */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for name of a user in Apps Directory API. */
class UserName {

  /** Last Name */
  core.String familyName;

  /** Full Name */
  core.String fullName;

  /** First Name */
  core.String givenName;

  /** Create new UserName from JSON data */
  UserName.fromJson(core.Map json) {
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("fullName")) {
      fullName = json["fullName"];
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
  }

  /** Create JSON Object for UserName */
  core.Map toJson() {
    var output = new core.Map();

    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (fullName != null) {
      output["fullName"] = fullName;
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }

    return output;
  }

  /** Return String representation of UserName */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for an organization entry. */
class UserOrganization {

  /** The cost center of the users department. */
  core.String costCenter;

  /** Custom type. */
  core.String customType;

  /** Department within the organization. */
  core.String department;

  /** Description of the organization. */
  core.String description;

  /** The domain to which the organization belongs to. */
  core.String domain;

  /** Location of the organization. This need not be fully qualified address. */
  core.String location;

  /** Name of the organization */
  core.String name;

  /** If it user's primary organization. */
  core.bool primary;

  /** Symobol of the organization. */
  core.String symbol;

  /** Title (designation) of the user in the organization. */
  core.String title;

  /** Each entry can have a type which indicates standard types of that entry. For example organization could be of school, work etc. In addition to the standard type, an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a CustomType value. */
  core.String type;

  /** Create new UserOrganization from JSON data */
  UserOrganization.fromJson(core.Map json) {
    if (json.containsKey("costCenter")) {
      costCenter = json["costCenter"];
    }
    if (json.containsKey("customType")) {
      customType = json["customType"];
    }
    if (json.containsKey("department")) {
      department = json["department"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("symbol")) {
      symbol = json["symbol"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for UserOrganization */
  core.Map toJson() {
    var output = new core.Map();

    if (costCenter != null) {
      output["costCenter"] = costCenter;
    }
    if (customType != null) {
      output["customType"] = customType;
    }
    if (department != null) {
      output["department"] = department;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (domain != null) {
      output["domain"] = domain;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (primary != null) {
      output["primary"] = primary;
    }
    if (symbol != null) {
      output["symbol"] = symbol;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of UserOrganization */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for a phone entry. */
class UserPhone {

  /** Custom Type. */
  core.String customType;

  /** If this is user's primary phone or not. */
  core.bool primary;

  /** Each entry can have a type which indicates standard types of that entry. For example phone could be of home_fax, work, mobile etc. In addition to the standard type, an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value. */
  core.String type;

  /** Phone number. */
  core.String value;

  /** Create new UserPhone from JSON data */
  UserPhone.fromJson(core.Map json) {
    if (json.containsKey("customType")) {
      customType = json["customType"];
    }
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for UserPhone */
  core.Map toJson() {
    var output = new core.Map();

    if (customType != null) {
      output["customType"] = customType;
    }
    if (primary != null) {
      output["primary"] = primary;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of UserPhone */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for Photo object in Apps Directory API. */
class UserPhoto {

  /** Height in pixels of the photo */
  core.int height;

  /** Unique identifier of User (Read-only) */
  core.String id;

  /** Kind of resource this is. */
  core.String kind;

  /** Mime Type of the photo */
  core.String mimeType;

  /** Base64 encoded photo data */
  core.String photoData;

  /** Primary email of User (Read-only) */
  core.String primaryEmail;

  /** Width in pixels of the photo */
  core.int width;

  /** Create new UserPhoto from JSON data */
  UserPhoto.fromJson(core.Map json) {
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mimeType")) {
      mimeType = json["mimeType"];
    }
    if (json.containsKey("photoData")) {
      photoData = json["photoData"];
    }
    if (json.containsKey("primaryEmail")) {
      primaryEmail = json["primaryEmail"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for UserPhoto */
  core.Map toJson() {
    var output = new core.Map();

    if (height != null) {
      output["height"] = height;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (mimeType != null) {
      output["mimeType"] = mimeType;
    }
    if (photoData != null) {
      output["photoData"] = photoData;
    }
    if (primaryEmail != null) {
      output["primaryEmail"] = primaryEmail;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of UserPhoto */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for a relation entry. */
class UserRelation {

  /** Custom Type. */
  core.String customType;

  /** The relation of the user. Some of the possible values are mother, father, sister, brother, manager, assistant, partner. */
  core.String type;

  /** The name of the relation. */
  core.String value;

  /** Create new UserRelation from JSON data */
  UserRelation.fromJson(core.Map json) {
    if (json.containsKey("customType")) {
      customType = json["customType"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for UserRelation */
  core.Map toJson() {
    var output = new core.Map();

    if (customType != null) {
      output["customType"] = customType;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of UserRelation */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON request template to undelete a user in Apps Directory API. */
class UserUndelete {

  /** OrgUnit of User */
  core.String orgUnitPath;

  /** Create new UserUndelete from JSON data */
  UserUndelete.fromJson(core.Map json) {
    if (json.containsKey("orgUnitPath")) {
      orgUnitPath = json["orgUnitPath"];
    }
  }

  /** Create JSON Object for UserUndelete */
  core.Map toJson() {
    var output = new core.Map();

    if (orgUnitPath != null) {
      output["orgUnitPath"] = orgUnitPath;
    }

    return output;
  }

  /** Return String representation of UserUndelete */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON response template for List Users operation in Apps Directory API. */
class Users {

  /** Kind of resource this is. */
  core.String kind;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Event that triggered this response (only used in case of Push Response) */
  core.String trigger_event;

  /** List of user objects. */
  core.List<User> users;

  /** Create new Users from JSON data */
  Users.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("trigger_event")) {
      trigger_event = json["trigger_event"];
    }
    if (json.containsKey("users")) {
      users = json["users"].map((usersItem) => new User.fromJson(usersItem)).toList();
    }
  }

  /** Create JSON Object for Users */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (trigger_event != null) {
      output["trigger_event"] = trigger_event;
    }
    if (users != null) {
      output["users"] = users.map((usersItem) => usersItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Users */
  core.String toString() => JSON.stringify(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
