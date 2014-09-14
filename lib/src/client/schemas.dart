part of admin_directory_v1_api;

/** JSON template for Alias object in Directory API. */
class Alias {

  /** A alias email */
  core.String alias;

  /** ETag of the resource. */
  core.String etag;

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
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
    if (etag != null) {
      output["etag"] = etag;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template to list aliases in Directory API. */
class Aliases {

  /** List of alias objects. */
  core.List<Alias> aliases;

  /** ETag of the resource. */
  core.String etag;

  /** Kind of resource this is. */
  core.String kind;

  /** Create new Aliases from JSON data */
  Aliases.fromJson(core.Map json) {
    if (json.containsKey("aliases")) {
      aliases = json["aliases"].map((aliasesItem) => new Alias.fromJson(aliasesItem)).toList();
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Aliases */
  core.String toString() => JSON.encode(this.toJson());

}

/** The template that returns individual ASP (Access Code) data. */
class Asp {

  /** The unique ID of the ASP. */
  core.int codeId;

  /** The time when the ASP was created. Expressed in Unix time format. */
  core.int creationTime;

  /** ETag of the ASP. */
  core.String etag;

  /** The type of the API resource. This is always admin#directory#asp. */
  core.String kind;

  /** The time when the ASP was last used. Expressed in Unix time format. */
  core.int lastTimeUsed;

  /** The name of the application that the user, represented by their userId, entered when the ASP was created. */
  core.String name;

  /** The unique ID of the user who issued the ASP. */
  core.String userKey;

  /** Create new Asp from JSON data */
  Asp.fromJson(core.Map json) {
    if (json.containsKey("codeId")) {
      codeId = json["codeId"];
    }
    if (json.containsKey("creationTime")) {
      creationTime = (json["creationTime"] is core.String) ? core.int.parse(json["creationTime"]) : json["creationTime"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastTimeUsed")) {
      lastTimeUsed = (json["lastTimeUsed"] is core.String) ? core.int.parse(json["lastTimeUsed"]) : json["lastTimeUsed"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("userKey")) {
      userKey = json["userKey"];
    }
  }

  /** Create JSON Object for Asp */
  core.Map toJson() {
    var output = new core.Map();

    if (codeId != null) {
      output["codeId"] = codeId;
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastTimeUsed != null) {
      output["lastTimeUsed"] = lastTimeUsed;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (userKey != null) {
      output["userKey"] = userKey;
    }

    return output;
  }

  /** Return String representation of Asp */
  core.String toString() => JSON.encode(this.toJson());

}

class Asps {

  /** ETag of the resource. */
  core.String etag;

  /** A list of ASP resources. */
  core.List<Asp> items;

  /** The type of the API resource. This is always admin#directory#aspList. */
  core.String kind;

  /** Create new Asps from JSON data */
  Asps.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Asp.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Asps */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Asps */
  core.String toString() => JSON.encode(this.toJson());

}

/** An notification channel used to watch for resource changes. */
class Channel {

  /** The address where notifications are delivered for this channel. */
  core.String address;

  /** Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional. */
  core.int expiration;

  /** A UUID or similar unique string that identifies this channel. */
  core.String id;

  /** Identifies this as a notification channel used to watch for changes to a resource. Value: the fixed string "api#channel". */
  core.String kind;

  /** Additional parameters controlling delivery channel behavior. Optional. */
  core.Map<core.String, core.String> params;

  /** A Boolean value to indicate whether payload is wanted. Optional. */
  core.bool payload;

  /** An opaque ID that identifies the resource being watched on this channel. Stable across different API versions. */
  core.String resourceId;

  /** A version-specific identifier for the watched resource. */
  core.String resourceUri;

  /** An arbitrary string delivered to the target address with each notification delivered over this channel. Optional. */
  core.String token;

  /** The type of delivery mechanism used for this channel. */
  core.String type;

  /** Create new Channel from JSON data */
  Channel.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("expiration")) {
      expiration = (json["expiration"] is core.String) ? core.int.parse(json["expiration"]) : json["expiration"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("params")) {
      params = _mapMap(json["params"]);
    }
    if (json.containsKey("payload")) {
      payload = json["payload"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = json["resourceId"];
    }
    if (json.containsKey("resourceUri")) {
      resourceUri = json["resourceUri"];
    }
    if (json.containsKey("token")) {
      token = json["token"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Channel */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }
    if (expiration != null) {
      output["expiration"] = expiration;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (params != null) {
      output["params"] = _mapMap(params);
    }
    if (payload != null) {
      output["payload"] = payload;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId;
    }
    if (resourceUri != null) {
      output["resourceUri"] = resourceUri;
    }
    if (token != null) {
      output["token"] = token;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Channel */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Chrome Os Device resource in Directory API. */
class ChromeOsDevice {

  /** Address or location of the device as noted by the administrator */
  core.String annotatedLocation;

  /** User of the device */
  core.String annotatedUser;

  /** Chromebook boot mode (Read-only) */
  core.String bootMode;

  /** Unique identifier of Chrome OS Device (Read-only) */
  core.String deviceId;

  /** ETag of the resource. */
  core.String etag;

  /** Chromebook Mac Address on ethernet network interface (Read-only) */
  core.String ethernetMacAddress;

  /** Chromebook firmware version (Read-only) */
  core.String firmwareVersion;

  /** Kind of resource this is. */
  core.String kind;

  /** Date and time the device was last enrolled (Read-only) */
  core.String lastEnrollmentTime;

  /** Date and time the device was last synchronized with the policy settings in the Google Apps administrator control panel (Read-only) */
  core.String lastSync;

  /** Chromebook Mac Address on wifi network interface (Read-only) */
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

  /** List of recent device users, in descending order by last login time (Read-only) */
  core.List<ChromeOsDeviceRecentUsers> recentUsers;

  /** Chromebook serial number (Read-only) */
  core.String serialNumber;

  /** status of the device (Read-only) */
  core.String status;

  /** Final date the device will be supported (Read-only) */
  core.String supportEndDate;

  /** Will Chromebook auto renew after support end date (Read-only) */
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
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("ethernetMacAddress")) {
      ethernetMacAddress = json["ethernetMacAddress"];
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
    if (json.containsKey("recentUsers")) {
      recentUsers = json["recentUsers"].map((recentUsersItem) => new ChromeOsDeviceRecentUsers.fromJson(recentUsersItem)).toList();
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
    if (etag != null) {
      output["etag"] = etag;
    }
    if (ethernetMacAddress != null) {
      output["ethernetMacAddress"] = ethernetMacAddress;
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
    if (recentUsers != null) {
      output["recentUsers"] = recentUsers.map((recentUsersItem) => recentUsersItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class ChromeOsDeviceRecentUsers {

  /** Email address of the user. Present only if the user type is managed */
  core.String email;

  /** The type of the user */
  core.String type;

  /** Create new ChromeOsDeviceRecentUsers from JSON data */
  ChromeOsDeviceRecentUsers.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ChromeOsDeviceRecentUsers */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ChromeOsDeviceRecentUsers */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template for List Chrome OS Devices operation in Directory API. */
class ChromeOsDevices {

  /** List of Chrome OS Device objects. */
  core.List<ChromeOsDevice> chromeosdevices;

  /** ETag of the resource. */
  core.String etag;

  /** Kind of resource this is. */
  core.String kind;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Create new ChromeOsDevices from JSON data */
  ChromeOsDevices.fromJson(core.Map json) {
    if (json.containsKey("chromeosdevices")) {
      chromeosdevices = json["chromeosdevices"].map((chromeosdevicesItem) => new ChromeOsDevice.fromJson(chromeosdevicesItem)).toList();
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
    if (etag != null) {
      output["etag"] = etag;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Group resource in Directory API. */
class Group {

  /** Is the group created by admin (Read-only) * */
  core.bool adminCreated;

  /** List of aliases (Read-only) */
  core.List<core.String> aliases;

  /** Description of the group */
  core.String description;

  /** Group direct members count */
  core.int directMembersCount;

  /** Email of Group */
  core.String email;

  /** ETag of the resource. */
  core.String etag;

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
    if (json.containsKey("directMembersCount")) {
      directMembersCount = (json["directMembersCount"] is core.String) ? core.int.parse(json["directMembersCount"]) : json["directMembersCount"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
    if (directMembersCount != null) {
      output["directMembersCount"] = directMembersCount;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (etag != null) {
      output["etag"] = etag;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template for List Groups operation in Directory API. */
class Groups {

  /** ETag of the resource. */
  core.String etag;

  /** List of group objects. */
  core.List<Group> groups;

  /** Kind of resource this is. */
  core.String kind;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Create new Groups from JSON data */
  Groups.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
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

    if (etag != null) {
      output["etag"] = etag;
    }
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Member resource in Directory API. */
class Member {

  /** Email of member (Read-only) */
  core.String email;

  /** ETag of the resource. */
  core.String etag;

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
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
    if (etag != null) {
      output["etag"] = etag;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template for List Members operation in Directory API. */
class Members {

  /** ETag of the resource. */
  core.String etag;

  /** Kind of resource this is. */
  core.String kind;

  /** List of member objects. */
  core.List<Member> members;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Create new Members from JSON data */
  Members.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
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

    if (etag != null) {
      output["etag"] = etag;
    }
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Mobile Device resource in Directory API. */
class MobileDevice {

  /** List of applications installed on Mobile Device */
  core.List<MobileDeviceApplications> applications;

  /** Mobile Device Baseband version (Read-only) */
  core.String basebandVersion;

  /** Mobile Device Build number (Read-only) */
  core.String buildNumber;

  /** The default locale used on the Mobile Device (Read-only) */
  core.String defaultLanguage;

  /** Mobile Device compromised status (Read-only) */
  core.String deviceCompromisedStatus;

  /** Mobile Device serial number (Read-only) */
  core.String deviceId;

  /** List of owner user's email addresses (Read-only) */
  core.List<core.String> email;

  /** ETag of the resource. */
  core.String etag;

  /** Date and time the device was first synchronized with the policy settings in the Google Apps administrator control panel (Read-only) */
  core.String firstSync;

  /** Mobile Device Hardware Id (Read-only) */
  core.String hardwareId;

  /** Mobile Device IMEI number (Read-only) */
  core.String imei;

  /** Mobile Device Kernel version (Read-only) */
  core.String kernelVersion;

  /** Kind of resource this is. */
  core.String kind;

  /** Date and time the device was last synchronized with the policy settings in the Google Apps administrator control panel (Read-only) */
  core.String lastSync;

  /** Boolean indicating if this account is on owner/primary profile or not (Read-only) */
  core.bool managedAccountIsOnOwnerProfile;

  /** Mobile Device MEID number (Read-only) */
  core.String meid;

  /** Name of the model of the device */
  core.String model;

  /** List of owner user's names (Read-only) */
  core.List<core.String> name;

  /** Mobile Device mobile or network operator (if available) (Read-only) */
  core.String networkOperator;

  /** Name of the mobile operating system */
  core.String os;

  /** Unique identifier of Mobile Device (Read-only) */
  core.String resourceId;

  /** Mobile Device SSN or Serial Number (Read-only) */
  core.String serialNumber;

  /** Status of the device (Read-only) */
  core.String status;

  /** The type of device (Read-only) */
  core.String type;

  /** Mobile Device user agent */
  core.String userAgent;

  /** Mobile Device WiFi MAC address (Read-only) */
  core.String wifiMacAddress;

  /** Create new MobileDevice from JSON data */
  MobileDevice.fromJson(core.Map json) {
    if (json.containsKey("applications")) {
      applications = json["applications"].map((applicationsItem) => new MobileDeviceApplications.fromJson(applicationsItem)).toList();
    }
    if (json.containsKey("basebandVersion")) {
      basebandVersion = json["basebandVersion"];
    }
    if (json.containsKey("buildNumber")) {
      buildNumber = json["buildNumber"];
    }
    if (json.containsKey("defaultLanguage")) {
      defaultLanguage = json["defaultLanguage"];
    }
    if (json.containsKey("deviceCompromisedStatus")) {
      deviceCompromisedStatus = json["deviceCompromisedStatus"];
    }
    if (json.containsKey("deviceId")) {
      deviceId = json["deviceId"];
    }
    if (json.containsKey("email")) {
      email = json["email"].toList();
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("firstSync")) {
      firstSync = json["firstSync"];
    }
    if (json.containsKey("hardwareId")) {
      hardwareId = json["hardwareId"];
    }
    if (json.containsKey("imei")) {
      imei = json["imei"];
    }
    if (json.containsKey("kernelVersion")) {
      kernelVersion = json["kernelVersion"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastSync")) {
      lastSync = json["lastSync"];
    }
    if (json.containsKey("managedAccountIsOnOwnerProfile")) {
      managedAccountIsOnOwnerProfile = json["managedAccountIsOnOwnerProfile"];
    }
    if (json.containsKey("meid")) {
      meid = json["meid"];
    }
    if (json.containsKey("model")) {
      model = json["model"];
    }
    if (json.containsKey("name")) {
      name = json["name"].toList();
    }
    if (json.containsKey("networkOperator")) {
      networkOperator = json["networkOperator"];
    }
    if (json.containsKey("os")) {
      os = json["os"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = json["resourceId"];
    }
    if (json.containsKey("serialNumber")) {
      serialNumber = json["serialNumber"];
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
    if (json.containsKey("wifiMacAddress")) {
      wifiMacAddress = json["wifiMacAddress"];
    }
  }

  /** Create JSON Object for MobileDevice */
  core.Map toJson() {
    var output = new core.Map();

    if (applications != null) {
      output["applications"] = applications.map((applicationsItem) => applicationsItem.toJson()).toList();
    }
    if (basebandVersion != null) {
      output["basebandVersion"] = basebandVersion;
    }
    if (buildNumber != null) {
      output["buildNumber"] = buildNumber;
    }
    if (defaultLanguage != null) {
      output["defaultLanguage"] = defaultLanguage;
    }
    if (deviceCompromisedStatus != null) {
      output["deviceCompromisedStatus"] = deviceCompromisedStatus;
    }
    if (deviceId != null) {
      output["deviceId"] = deviceId;
    }
    if (email != null) {
      output["email"] = email.toList();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (firstSync != null) {
      output["firstSync"] = firstSync;
    }
    if (hardwareId != null) {
      output["hardwareId"] = hardwareId;
    }
    if (imei != null) {
      output["imei"] = imei;
    }
    if (kernelVersion != null) {
      output["kernelVersion"] = kernelVersion;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastSync != null) {
      output["lastSync"] = lastSync;
    }
    if (managedAccountIsOnOwnerProfile != null) {
      output["managedAccountIsOnOwnerProfile"] = managedAccountIsOnOwnerProfile;
    }
    if (meid != null) {
      output["meid"] = meid;
    }
    if (model != null) {
      output["model"] = model;
    }
    if (name != null) {
      output["name"] = name.toList();
    }
    if (networkOperator != null) {
      output["networkOperator"] = networkOperator;
    }
    if (os != null) {
      output["os"] = os;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId;
    }
    if (serialNumber != null) {
      output["serialNumber"] = serialNumber;
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
    if (wifiMacAddress != null) {
      output["wifiMacAddress"] = wifiMacAddress;
    }

    return output;
  }

  /** Return String representation of MobileDevice */
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON request template for firing commands on Mobile Device in Directory Devices API. */
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template for List Mobile Devices operation in Directory API. */
class MobileDevices {

  /** ETag of the resource. */
  core.String etag;

  /** Kind of resource this is. */
  core.String kind;

  /** List of Mobile Device objects. */
  core.List<MobileDevice> mobiledevices;

  /** Token used to access next page of this result. */
  core.String nextPageToken;

  /** Create new MobileDevices from JSON data */
  MobileDevices.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
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

    if (etag != null) {
      output["etag"] = etag;
    }
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Template for a notification resource. */
class Notification {

  /** Body of the notification (Read-only) */
  core.String body;

  /** ETag of the resource. */
  core.String etag;

  /** Address from which the notification is received (Read-only) */
  core.String fromAddress;

  /** Boolean indicating whether the notification is unread or not. */
  core.bool isUnread;

  /** The type of the resource. */
  core.String kind;

  core.String notificationId;

  /** Time at which notification was sent (Read-only) */
  core.String sendTime;

  /** Subject of the notification (Read-only) */
  core.String subject;

  /** Create new Notification from JSON data */
  Notification.fromJson(core.Map json) {
    if (json.containsKey("body")) {
      body = json["body"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fromAddress")) {
      fromAddress = json["fromAddress"];
    }
    if (json.containsKey("isUnread")) {
      isUnread = json["isUnread"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("notificationId")) {
      notificationId = json["notificationId"];
    }
    if (json.containsKey("sendTime")) {
      sendTime = json["sendTime"];
    }
    if (json.containsKey("subject")) {
      subject = json["subject"];
    }
  }

  /** Create JSON Object for Notification */
  core.Map toJson() {
    var output = new core.Map();

    if (body != null) {
      output["body"] = body;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fromAddress != null) {
      output["fromAddress"] = fromAddress;
    }
    if (isUnread != null) {
      output["isUnread"] = isUnread;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (notificationId != null) {
      output["notificationId"] = notificationId;
    }
    if (sendTime != null) {
      output["sendTime"] = sendTime;
    }
    if (subject != null) {
      output["subject"] = subject;
    }

    return output;
  }

  /** Return String representation of Notification */
  core.String toString() => JSON.encode(this.toJson());

}

/** Template for notifications list response. */
class Notifications {

  /** ETag of the resource. */
  core.String etag;

  /** List of notifications in this page. */
  core.List<Notification> items;

  /** The type of the resource. */
  core.String kind;

  /** Token for fetching the next page of notifications. */
  core.String nextPageToken;

  /** Number of unread notification for the domain. */
  core.int unreadNotificationsCount;

  /** Create new Notifications from JSON data */
  Notifications.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Notification.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("unreadNotificationsCount")) {
      unreadNotificationsCount = json["unreadNotificationsCount"];
    }
  }

  /** Create JSON Object for Notifications */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (unreadNotificationsCount != null) {
      output["unreadNotificationsCount"] = unreadNotificationsCount;
    }

    return output;
  }

  /** Return String representation of Notifications */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Org Unit resource in Directory API. */
class OrgUnit {

  /** Should block inheritance */
  core.bool blockInheritance;

  /** Description of OrgUnit */
  core.String description;

  /** ETag of the resource. */
  core.String etag;

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
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
    if (etag != null) {
      output["etag"] = etag;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template for List Organization Units operation in Directory API. */
class OrgUnits {

  /** ETag of the resource. */
  core.String etag;

  /** Kind of resource this is. */
  core.String kind;

  /** List of user objects. */
  core.List<OrgUnit> organizationUnits;

  /** Create new OrgUnits from JSON data */
  OrgUnits.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
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

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (organizationUnits != null) {
      output["organizationUnits"] = organizationUnits.map((organizationUnitsItem) => organizationUnitsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of OrgUnits */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for token resource in Directory API. */
class Token {

  /** Whether the application is registered with Google. The value is true if the application has an anonymous Client ID. */
  core.bool anonymous;

  /** The Client ID of the application the token is issued to. */
  core.String clientId;

  /** The displayable name of the application the token is issued to. */
  core.String displayText;

  /** ETag of the resource. */
  core.String etag;

  /** The type of the API resource. This is always admin#directory#token. */
  core.String kind;

  /** Whether the token is issued to an installed application. The value is true if the application is installed to a desktop or mobile device. */
  core.bool nativeApp;

  /** A list of authorization scopes the application is granted. */
  core.List<core.String> scopes;

  /** The unique ID of the user that issued the token. */
  core.String userKey;

  /** Create new Token from JSON data */
  Token.fromJson(core.Map json) {
    if (json.containsKey("anonymous")) {
      anonymous = json["anonymous"];
    }
    if (json.containsKey("clientId")) {
      clientId = json["clientId"];
    }
    if (json.containsKey("displayText")) {
      displayText = json["displayText"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nativeApp")) {
      nativeApp = json["nativeApp"];
    }
    if (json.containsKey("scopes")) {
      scopes = json["scopes"].toList();
    }
    if (json.containsKey("userKey")) {
      userKey = json["userKey"];
    }
  }

  /** Create JSON Object for Token */
  core.Map toJson() {
    var output = new core.Map();

    if (anonymous != null) {
      output["anonymous"] = anonymous;
    }
    if (clientId != null) {
      output["clientId"] = clientId;
    }
    if (displayText != null) {
      output["displayText"] = displayText;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nativeApp != null) {
      output["nativeApp"] = nativeApp;
    }
    if (scopes != null) {
      output["scopes"] = scopes.toList();
    }
    if (userKey != null) {
      output["userKey"] = userKey;
    }

    return output;
  }

  /** Return String representation of Token */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template for List tokens operation in Directory API. */
class Tokens {

  /** ETag of the resource. */
  core.String etag;

  /** A list of Token resources. */
  core.List<Token> items;

  /** The type of the API resource. This is always admin#directory#tokenList. */
  core.String kind;

  /** Create new Tokens from JSON data */
  Tokens.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Token.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Tokens */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Tokens */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for User object in Apps Directory API. */
class User {

  core.Object addresses;

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

  core.Object emails;

  /** ETag of the resource. */
  core.String etag;

  core.Object externalIds;

  /** Hash function name for password. Supported are MD5, SHA-1 and crypt */
  core.String hashFunction;

  /** Unique identifier of User (Read-only) */
  core.String id;

  core.Object ims;

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

  core.Object organizations;

  /** User's password */
  core.String password;

  core.Object phones;

  /** username of User */
  core.String primaryEmail;

  core.Object relations;

  /** Indicates if user is suspended */
  core.bool suspended;

  /** Suspension reason if user is suspended (Read-only) */
  core.String suspensionReason;

  /** Photo Url of the user (Read-only) */
  core.String thumbnailPhotoUrl;

  /** Create new User from JSON data */
  User.fromJson(core.Map json) {
    if (json.containsKey("addresses")) {
      addresses = json["addresses"];
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
      emails = json["emails"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("externalIds")) {
      externalIds = json["externalIds"];
    }
    if (json.containsKey("hashFunction")) {
      hashFunction = json["hashFunction"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("ims")) {
      ims = json["ims"];
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
      organizations = json["organizations"];
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
    if (json.containsKey("phones")) {
      phones = json["phones"];
    }
    if (json.containsKey("primaryEmail")) {
      primaryEmail = json["primaryEmail"];
    }
    if (json.containsKey("relations")) {
      relations = json["relations"];
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
      output["addresses"] = addresses;
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
      output["emails"] = emails;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (externalIds != null) {
      output["externalIds"] = externalIds;
    }
    if (hashFunction != null) {
      output["hashFunction"] = hashFunction;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (ims != null) {
      output["ims"] = ims;
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
      output["organizations"] = organizations;
    }
    if (password != null) {
      output["password"] = password;
    }
    if (phones != null) {
      output["phones"] = phones;
    }
    if (primaryEmail != null) {
      output["primaryEmail"] = primaryEmail;
    }
    if (relations != null) {
      output["relations"] = relations;
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for an email. */
class UserEmail {

  /** Email id of the user. */
  core.String address;

  /** Custom Type. */
  core.String customType;

  /** If this is user's primary email. Only one entry could be marked as primary. */
  core.bool primary;

  /** Each entry can have a type which indicates standard types of that entry. For example email could be of home, work etc. In addition to the standard type, an entry can have a custom type and can take any value Such types should have the CUSTOM value as type and also have a customType value. */
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for instant messenger of an user. */
class UserIm {

  /** Custom protocol. */
  core.String customProtocol;

  /** Custom type. */
  core.String customType;

  /** Instant messenger id. */
  core.String im;

  /** If this is user's primary im. Only one entry could be marked as primary. */
  core.bool primary;

  /** Protocol used in the instant messenger. It should be one of the values from ImProtocolTypes map. Similar to type, it can take a CUSTOM value and specify the custom name in customProtocol field. */
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON request template for setting/revoking admin status of a user in Directory API. */
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for name of a user in Directory API. */
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
  core.String toString() => JSON.encode(this.toJson());

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

  /** Symbol of the organization. */
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for Photo object in Directory API. */
class UserPhoto {

  /** ETag of the resource. */
  core.String etag;

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
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
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

    if (etag != null) {
      output["etag"] = etag;
    }
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
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON request template to undelete a user in Directory API. */
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template for List Users operation in Apps Directory API. */
class Users {

  /** ETag of the resource. */
  core.String etag;

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
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
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

    if (etag != null) {
      output["etag"] = etag;
    }
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
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON template for verification codes in Directory API. */
class VerificationCode {

  /** ETag of the resource. */
  core.String etag;

  /** The type of the resource. This is always admin#directory#verificationCode. */
  core.String kind;

  /** The obfuscated unique ID of the user. */
  core.String userId;

  /** A current verification code for the user. Invalidated or used verification codes are not returned as part of the result. */
  core.String verificationCode;

  /** Create new VerificationCode from JSON data */
  VerificationCode.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("userId")) {
      userId = json["userId"];
    }
    if (json.containsKey("verificationCode")) {
      verificationCode = json["verificationCode"];
    }
  }

  /** Create JSON Object for VerificationCode */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (userId != null) {
      output["userId"] = userId;
    }
    if (verificationCode != null) {
      output["verificationCode"] = verificationCode;
    }

    return output;
  }

  /** Return String representation of VerificationCode */
  core.String toString() => JSON.encode(this.toJson());

}

/** JSON response template for List verification codes operation in Directory API. */
class VerificationCodes {

  /** ETag of the resource. */
  core.String etag;

  /** A list of verification code resources. */
  core.List<VerificationCode> items;

  /** The type of the resource. This is always admin#directory#verificationCodesList. */
  core.String kind;

  /** Create new VerificationCodes from JSON data */
  VerificationCodes.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new VerificationCode.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for VerificationCodes */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of VerificationCodes */
  core.String toString() => JSON.encode(this.toJson());

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
