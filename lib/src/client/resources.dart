part of admin_directory_v1_api;

class AspsResource_ {

  final Client _client;

  AspsResource_(Client client) :
      _client = client;

  /**
   * Delete an ASP issued by a user.
   *
   * [userKey] - Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
   *
   * [codeId] - The unique ID of the ASP to be deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String userKey, core.int codeId, {core.Map optParams}) {
    var url = "users/{userKey}/asps/{codeId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (codeId == null) paramErrors.add("codeId is required");
    if (codeId != null) urlParams["codeId"] = codeId;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Get information about an ASP issued by a user.
   *
   * [userKey] - Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
   *
   * [codeId] - The unique ID of the ASP.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Asp> get(core.String userKey, core.int codeId, {core.Map optParams}) {
    var url = "users/{userKey}/asps/{codeId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (codeId == null) paramErrors.add("codeId is required");
    if (codeId != null) urlParams["codeId"] = codeId;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Asp.fromJson(data));
  }

  /**
   * List the ASPs issued by a user.
   *
   * [userKey] - Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Asps> list(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/asps";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Asps.fromJson(data));
  }
}

class ChannelsResource_ {

  final Client _client;

  ChannelsResource_(Client client) :
      _client = client;

  /**
   * Stop watching resources through this channel
   *
   * [request] - Channel to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> stop(Channel request, {core.Map optParams}) {
    var url = "/admin/directory_v1/channels/stop";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class ChromeosdevicesResource_ {

  final Client _client;

  ChromeosdevicesResource_(Client client) :
      _client = client;

  /**
   * Retrieve Chrome OS Device
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [deviceId] - Immutable id of Chrome OS Device
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     BASIC - Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)
   *     FULL - Includes all metadata fields
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ChromeOsDevice> get(core.String customerId, core.String deviceId, {core.String projection, core.Map optParams}) {
    var url = "customer/{customerId}/devices/chromeos/{deviceId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (deviceId == null) paramErrors.add("deviceId is required");
    if (deviceId != null) urlParams["deviceId"] = deviceId;
    if (projection != null && !["BASIC", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: BASIC, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ChromeOsDevice.fromJson(data));
  }

  /**
   * Retrieve all Chrome OS Devices of a customer (paginated)
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [maxResults] - Maximum number of results to return. Default is 100
   *   Minimum: 1
   *
   * [orderBy] - Column to use for sorting results
   *   Allowed values:
   *     annotatedLocation - Chromebook location as annotated by the administrator.
   *     annotatedUser - Chromebook user as annotated by administrator.
   *     lastSync - Chromebook last sync.
   *     notes - Chromebook notes as annotated by the administrator.
   *     serialNumber - Chromebook Serial Number.
   *     status - Chromebook status.
   *     supportEndDate - Chromebook support end date.
   *
   * [pageToken] - Token to specify next page in the list
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     BASIC - Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)
   *     FULL - Includes all metadata fields
   *
   * [query] - Search string in the format given at http://support.google.com/chromeos/a/bin/answer.py?hl=en&answer=1698333
   *
   * [sortOrder] - Whether to return results in ascending or descending order. Only of use when orderBy is also used
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ChromeOsDevices> list(core.String customerId, {core.int maxResults, core.String orderBy, core.String pageToken, core.String projection, core.String query, core.String sortOrder, core.Map optParams}) {
    var url = "customer/{customerId}/devices/chromeos";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["annotatedLocation", "annotatedUser", "lastSync", "notes", "serialNumber", "status", "supportEndDate"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: annotatedLocation, annotatedUser, lastSync, notes, serialNumber, status, supportEndDate");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projection != null && !["BASIC", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: BASIC, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (query != null) queryParams["query"] = query;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ChromeOsDevices.fromJson(data));
  }

  /**
   * Update Chrome OS Device. This method supports patch semantics.
   *
   * [request] - ChromeOsDevice to send in this request
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [deviceId] - Immutable id of Chrome OS Device
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     BASIC - Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)
   *     FULL - Includes all metadata fields
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ChromeOsDevice> patch(ChromeOsDevice request, core.String customerId, core.String deviceId, {core.String projection, core.Map optParams}) {
    var url = "customer/{customerId}/devices/chromeos/{deviceId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (deviceId == null) paramErrors.add("deviceId is required");
    if (deviceId != null) urlParams["deviceId"] = deviceId;
    if (projection != null && !["BASIC", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: BASIC, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ChromeOsDevice.fromJson(data));
  }

  /**
   * Update Chrome OS Device
   *
   * [request] - ChromeOsDevice to send in this request
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [deviceId] - Immutable id of Chrome OS Device
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     BASIC - Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)
   *     FULL - Includes all metadata fields
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ChromeOsDevice> update(ChromeOsDevice request, core.String customerId, core.String deviceId, {core.String projection, core.Map optParams}) {
    var url = "customer/{customerId}/devices/chromeos/{deviceId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (deviceId == null) paramErrors.add("deviceId is required");
    if (deviceId != null) urlParams["deviceId"] = deviceId;
    if (projection != null && !["BASIC", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: BASIC, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ChromeOsDevice.fromJson(data));
  }
}

class GroupsResource_ {

  final Client _client;

  final GroupsAliasesResource_ aliases;

  GroupsResource_(Client client) :
      _client = client,
      aliases = new GroupsAliasesResource_(client);

  /**
   * Delete Group
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String groupKey, {core.Map optParams}) {
    var url = "groups/{groupKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieve Group
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Group> get(core.String groupKey, {core.Map optParams}) {
    var url = "groups/{groupKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Group.fromJson(data));
  }

  /**
   * Create Group
   *
   * [request] - Group to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Group> insert(Group request, {core.Map optParams}) {
    var url = "groups";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Group.fromJson(data));
  }

  /**
   * Retrieve all groups in a domain (paginated)
   *
   * [customer] - Immutable id of the Google Apps account. In case of multi-domain, to fetch all groups for a customer, fill this field instead of domain.
   *
   * [domain] - Name of the domain. Fill this field to get groups from only this domain. To return all groups in a multi-domain fill customer field instead.
   *
   * [maxResults] - Maximum number of results to return. Default is 200
   *   Minimum: 1
   *
   * [pageToken] - Token to specify next page in the list
   *
   * [userKey] - Email or immutable Id of the user if only those groups are to be listed, the given user is a member of. If Id, it should match with id of user object
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Groups> list({core.String customer, core.String domain, core.int maxResults, core.String pageToken, core.String userKey, core.Map optParams}) {
    var url = "groups";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customer != null) queryParams["customer"] = customer;
    if (domain != null) queryParams["domain"] = domain;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (userKey != null) queryParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Groups.fromJson(data));
  }

  /**
   * Update Group. This method supports patch semantics.
   *
   * [request] - Group to send in this request
   *
   * [groupKey] - Email or immutable Id of the group. If Id, it should match with id of group object
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Group> patch(Group request, core.String groupKey, {core.Map optParams}) {
    var url = "groups/{groupKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Group.fromJson(data));
  }

  /**
   * Update Group
   *
   * [request] - Group to send in this request
   *
   * [groupKey] - Email or immutable Id of the group. If Id, it should match with id of group object
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Group> update(Group request, core.String groupKey, {core.Map optParams}) {
    var url = "groups/{groupKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Group.fromJson(data));
  }
}

class GroupsAliasesResource_ {

  final Client _client;

  GroupsAliasesResource_(Client client) :
      _client = client;

  /**
   * Remove a alias for the group
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [alias] - The alias to be removed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String groupKey, core.String alias, {core.Map optParams}) {
    var url = "groups/{groupKey}/aliases/{alias}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (alias == null) paramErrors.add("alias is required");
    if (alias != null) urlParams["alias"] = alias;
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Add a alias for the group
   *
   * [request] - Alias to send in this request
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Alias> insert(Alias request, core.String groupKey, {core.Map optParams}) {
    var url = "groups/{groupKey}/aliases";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Alias.fromJson(data));
  }

  /**
   * List all aliases for a group
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Aliases> list(core.String groupKey, {core.Map optParams}) {
    var url = "groups/{groupKey}/aliases";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Aliases.fromJson(data));
  }
}

class MembersResource_ {

  final Client _client;

  MembersResource_(Client client) :
      _client = client;

  /**
   * Remove membership.
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [memberKey] - Email or immutable Id of the member
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String groupKey, core.String memberKey, {core.Map optParams}) {
    var url = "groups/{groupKey}/members/{memberKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (memberKey == null) paramErrors.add("memberKey is required");
    if (memberKey != null) urlParams["memberKey"] = memberKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieve Group Member
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [memberKey] - Email or immutable Id of the member
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Member> get(core.String groupKey, core.String memberKey, {core.Map optParams}) {
    var url = "groups/{groupKey}/members/{memberKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (memberKey == null) paramErrors.add("memberKey is required");
    if (memberKey != null) urlParams["memberKey"] = memberKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Member.fromJson(data));
  }

  /**
   * Add user to the specified group.
   *
   * [request] - Member to send in this request
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Member> insert(Member request, core.String groupKey, {core.Map optParams}) {
    var url = "groups/{groupKey}/members";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Member.fromJson(data));
  }

  /**
   * Retrieve all members in a group (paginated)
   *
   * [groupKey] - Email or immutable Id of the group
   *
   * [maxResults] - Maximum number of results to return. Default is 200
   *   Minimum: 1
   *
   * [pageToken] - Token to specify next page in the list
   *
   * [roles] - Comma separated role values to filter list results on.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Members> list(core.String groupKey, {core.int maxResults, core.String pageToken, core.String roles, core.Map optParams}) {
    var url = "groups/{groupKey}/members";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (roles != null) queryParams["roles"] = roles;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Members.fromJson(data));
  }

  /**
   * Update membership of a user in the specified group. This method supports patch semantics.
   *
   * [request] - Member to send in this request
   *
   * [groupKey] - Email or immutable Id of the group. If Id, it should match with id of group object
   *
   * [memberKey] - Email or immutable Id of the user. If Id, it should match with id of member object
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Member> patch(Member request, core.String groupKey, core.String memberKey, {core.Map optParams}) {
    var url = "groups/{groupKey}/members/{memberKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (memberKey == null) paramErrors.add("memberKey is required");
    if (memberKey != null) urlParams["memberKey"] = memberKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Member.fromJson(data));
  }

  /**
   * Update membership of a user in the specified group.
   *
   * [request] - Member to send in this request
   *
   * [groupKey] - Email or immutable Id of the group. If Id, it should match with id of group object
   *
   * [memberKey] - Email or immutable Id of the user. If Id, it should match with id of member object
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Member> update(Member request, core.String groupKey, core.String memberKey, {core.Map optParams}) {
    var url = "groups/{groupKey}/members/{memberKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (groupKey == null) paramErrors.add("groupKey is required");
    if (groupKey != null) urlParams["groupKey"] = groupKey;
    if (memberKey == null) paramErrors.add("memberKey is required");
    if (memberKey != null) urlParams["memberKey"] = memberKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Member.fromJson(data));
  }
}

class MobiledevicesResource_ {

  final Client _client;

  MobiledevicesResource_(Client client) :
      _client = client;

  /**
   * Take action on Mobile Device
   *
   * [request] - MobileDeviceAction to send in this request
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [resourceId] - Immutable id of Mobile Device
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> action(MobileDeviceAction request, core.String customerId, core.String resourceId, {core.Map optParams}) {
    var url = "customer/{customerId}/devices/mobile/{resourceId}/action";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (resourceId == null) paramErrors.add("resourceId is required");
    if (resourceId != null) urlParams["resourceId"] = resourceId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Delete Mobile Device
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [resourceId] - Immutable id of Mobile Device
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String customerId, core.String resourceId, {core.Map optParams}) {
    var url = "customer/{customerId}/devices/mobile/{resourceId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (resourceId == null) paramErrors.add("resourceId is required");
    if (resourceId != null) urlParams["resourceId"] = resourceId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieve Mobile Device
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [resourceId] - Immutable id of Mobile Device
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     BASIC - Includes only the basic metadata fields (e.g., deviceId, model, status, type, and status)
   *     FULL - Includes all metadata fields
   *
   * [optParams] - Additional query parameters
   */
  async.Future<MobileDevice> get(core.String customerId, core.String resourceId, {core.String projection, core.Map optParams}) {
    var url = "customer/{customerId}/devices/mobile/{resourceId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (projection != null && !["BASIC", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: BASIC, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (resourceId == null) paramErrors.add("resourceId is required");
    if (resourceId != null) urlParams["resourceId"] = resourceId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new MobileDevice.fromJson(data));
  }

  /**
   * Retrieve all Mobile Devices of a customer (paginated)
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [maxResults] - Maximum number of results to return. Default is 100
   *   Minimum: 1
   *
   * [orderBy] - Column to use for sorting results
   *   Allowed values:
   *     deviceId - Mobile Device serial number.
   *     email - Owner user email.
   *     lastSync - Last policy settings sync date time of the device.
   *     model - Mobile Device model.
   *     name - Owner user name.
   *     os - Mobile operating system.
   *     status - Status of the device.
   *     type - Type of the device.
   *
   * [pageToken] - Token to specify next page in the list
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     BASIC - Includes only the basic metadata fields (e.g., deviceId, model, status, type, and status)
   *     FULL - Includes all metadata fields
   *
   * [query] - Search string in the format given at http://support.google.com/a/bin/answer.py?hl=en&answer=1408863#search
   *
   * [sortOrder] - Whether to return results in ascending or descending order. Only of use when orderBy is also used
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<MobileDevices> list(core.String customerId, {core.int maxResults, core.String orderBy, core.String pageToken, core.String projection, core.String query, core.String sortOrder, core.Map optParams}) {
    var url = "customer/{customerId}/devices/mobile";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["deviceId", "email", "lastSync", "model", "name", "os", "status", "type"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: deviceId, email, lastSync, model, name, os, status, type");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (projection != null && !["BASIC", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: BASIC, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (query != null) queryParams["query"] = query;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new MobileDevices.fromJson(data));
  }
}

class NotificationsResource_ {

  final Client _client;

  NotificationsResource_(Client client) :
      _client = client;

  /**
   * Deletes a notification
   *
   * [customer] - The unique ID for the customer's Google account. The customerId is also returned as part of the Users resource.
   *
   * [notificationId] - The unique ID of the notification.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String customer, core.String notificationId, {core.Map optParams}) {
    var url = "customer/{customer}/notifications/{notificationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customer == null) paramErrors.add("customer is required");
    if (customer != null) urlParams["customer"] = customer;
    if (notificationId == null) paramErrors.add("notificationId is required");
    if (notificationId != null) urlParams["notificationId"] = notificationId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves a notification.
   *
   * [customer] - The unique ID for the customer's Google account. The customerId is also returned as part of the Users resource.
   *
   * [notificationId] - The unique ID of the notification.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Notification> get(core.String customer, core.String notificationId, {core.Map optParams}) {
    var url = "customer/{customer}/notifications/{notificationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customer == null) paramErrors.add("customer is required");
    if (customer != null) urlParams["customer"] = customer;
    if (notificationId == null) paramErrors.add("notificationId is required");
    if (notificationId != null) urlParams["notificationId"] = notificationId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Notification.fromJson(data));
  }

  /**
   * Retrieves a list of notifications.
   *
   * [customer] - The unique ID for the customer's Google account.
   *
   * [language] - The ISO 639-1 code of the language notifications are returned in. The default is English (en).
   *
   * [maxResults] - Maximum number of notifications to return per page. The default is 100.
   *
   * [pageToken] - The token to specify the page of results to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Notifications> list(core.String customer, {core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "customer/{customer}/notifications";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customer == null) paramErrors.add("customer is required");
    if (customer != null) urlParams["customer"] = customer;
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Notifications.fromJson(data));
  }

  /**
   * Updates a notification. This method supports patch semantics.
   *
   * [request] - Notification to send in this request
   *
   * [customer] - The unique ID for the customer's Google account.
   *
   * [notificationId] - The unique ID of the notification.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Notification> patch(Notification request, core.String customer, core.String notificationId, {core.Map optParams}) {
    var url = "customer/{customer}/notifications/{notificationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customer == null) paramErrors.add("customer is required");
    if (customer != null) urlParams["customer"] = customer;
    if (notificationId == null) paramErrors.add("notificationId is required");
    if (notificationId != null) urlParams["notificationId"] = notificationId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Notification.fromJson(data));
  }

  /**
   * Updates a notification.
   *
   * [request] - Notification to send in this request
   *
   * [customer] - The unique ID for the customer's Google account.
   *
   * [notificationId] - The unique ID of the notification.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Notification> update(Notification request, core.String customer, core.String notificationId, {core.Map optParams}) {
    var url = "customer/{customer}/notifications/{notificationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customer == null) paramErrors.add("customer is required");
    if (customer != null) urlParams["customer"] = customer;
    if (notificationId == null) paramErrors.add("notificationId is required");
    if (notificationId != null) urlParams["notificationId"] = notificationId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Notification.fromJson(data));
  }
}

class OrgunitsResource_ {

  final Client _client;

  OrgunitsResource_(Client client) :
      _client = client;

  /**
   * Remove Organization Unit
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [orgUnitPath] - Full path of the organization unit
   *   Repeated values: allowed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String customerId, core.List<core.String> orgUnitPath, {core.Map optParams}) {
    var url = "customer/{customerId}/orgunits{/orgUnitPath*}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (orgUnitPath == null) paramErrors.add("orgUnitPath is required");
    if (orgUnitPath != null) urlParams["orgUnitPath"] = orgUnitPath;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieve Organization Unit
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [orgUnitPath] - Full path of the organization unit
   *   Repeated values: allowed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<OrgUnit> get(core.String customerId, core.List<core.String> orgUnitPath, {core.Map optParams}) {
    var url = "customer/{customerId}/orgunits{/orgUnitPath*}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (orgUnitPath == null) paramErrors.add("orgUnitPath is required");
    if (orgUnitPath != null) urlParams["orgUnitPath"] = orgUnitPath;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new OrgUnit.fromJson(data));
  }

  /**
   * Add Organization Unit
   *
   * [request] - OrgUnit to send in this request
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [optParams] - Additional query parameters
   */
  async.Future<OrgUnit> insert(OrgUnit request, core.String customerId, {core.Map optParams}) {
    var url = "customer/{customerId}/orgunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new OrgUnit.fromJson(data));
  }

  /**
   * Retrieve all Organization Units
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [orgUnitPath] - the URL-encoded organization unit
   *   Default: 
   *
   * [type] - Whether to return all sub-organizations or just immediate children
   *   Allowed values:
   *     all - All sub-organization units.
   *     children - Immediate children only (default).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<OrgUnits> list(core.String customerId, {core.String orgUnitPath, core.String type, core.Map optParams}) {
    var url = "customer/{customerId}/orgunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (orgUnitPath != null) queryParams["orgUnitPath"] = orgUnitPath;
    if (type != null && !["all", "children"].contains(type)) {
      paramErrors.add("Allowed values for type: all, children");
    }
    if (type != null) queryParams["type"] = type;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new OrgUnits.fromJson(data));
  }

  /**
   * Update Organization Unit. This method supports patch semantics.
   *
   * [request] - OrgUnit to send in this request
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [orgUnitPath] - Full path of the organization unit
   *   Repeated values: allowed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<OrgUnit> patch(OrgUnit request, core.String customerId, core.List<core.String> orgUnitPath, {core.Map optParams}) {
    var url = "customer/{customerId}/orgunits{/orgUnitPath*}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (orgUnitPath == null) paramErrors.add("orgUnitPath is required");
    if (orgUnitPath != null) urlParams["orgUnitPath"] = orgUnitPath;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new OrgUnit.fromJson(data));
  }

  /**
   * Update Organization Unit
   *
   * [request] - OrgUnit to send in this request
   *
   * [customerId] - Immutable id of the Google Apps account
   *
   * [orgUnitPath] - Full path of the organization unit
   *   Repeated values: allowed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<OrgUnit> update(OrgUnit request, core.String customerId, core.List<core.String> orgUnitPath, {core.Map optParams}) {
    var url = "customer/{customerId}/orgunits{/orgUnitPath*}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (orgUnitPath == null) paramErrors.add("orgUnitPath is required");
    if (orgUnitPath != null) urlParams["orgUnitPath"] = orgUnitPath;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new OrgUnit.fromJson(data));
  }
}

class TokensResource_ {

  final Client _client;

  TokensResource_(Client client) :
      _client = client;

  /**
   * Delete all access tokens issued by a user for an application.
   *
   * [userKey] - Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
   *
   * [clientId] - The Client ID of the application the token is issued to.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String userKey, core.String clientId, {core.Map optParams}) {
    var url = "users/{userKey}/tokens/{clientId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (clientId == null) paramErrors.add("clientId is required");
    if (clientId != null) urlParams["clientId"] = clientId;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Get information about an access token issued by a user.
   *
   * [userKey] - Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
   *
   * [clientId] - The Client ID of the application the token is issued to.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Token> get(core.String userKey, core.String clientId, {core.Map optParams}) {
    var url = "users/{userKey}/tokens/{clientId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (clientId == null) paramErrors.add("clientId is required");
    if (clientId != null) urlParams["clientId"] = clientId;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Token.fromJson(data));
  }

  /**
   * Returns the set of tokens specified user has issued to 3rd party applications.
   *
   * [userKey] - Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Tokens> list(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/tokens";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Tokens.fromJson(data));
  }
}

class UsersResource_ {

  final Client _client;

  final UsersAliasesResource_ aliases;
  final UsersPhotosResource_ photos;

  UsersResource_(Client client) :
      _client = client,
      aliases = new UsersAliasesResource_(client),
      photos = new UsersPhotosResource_(client);

  /**
   * Delete user
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * retrieve user
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<User> get(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new User.fromJson(data));
  }

  /**
   * create user.
   *
   * [request] - User to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<User> insert(User request, {core.Map optParams}) {
    var url = "users";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new User.fromJson(data));
  }

  /**
   * Retrieve either deleted users or all users in a domain (paginated)
   *
   * [customer] - Immutable id of the Google Apps account. In case of multi-domain, to fetch all users for a customer, fill this field instead of domain.
   *
   * [domain] - Name of the domain. Fill this field to get users from only this domain. To return all users in a multi-domain fill customer field instead.
   *
   * [event] - Event on which subscription is intended (if subscribing)
   *   Allowed values:
   *     add - User Created Event
   *     delete - User Deleted Event
   *     makeAdmin - User Admin Status Change Event
   *     undelete - User Undeleted Event
   *     update - User Updated Event
   *
   * [maxResults] - Maximum number of results to return. Default is 100. Max allowed is 500
   *   Minimum: 1
   *   Maximum: 500
   *
   * [orderBy] - Column to use for sorting results
   *   Allowed values:
   *     email - Primary email of the user.
   *     familyName - User's family name.
   *     givenName - User's given name.
   *
   * [pageToken] - Token to specify next page in the list
   *
   * [query] - Query string search. Should be of the form "" where field can be any of supported fields, operators can be one of '=' for exact match or ':' for prefix match. For prefix match, the value should always be followed by a *.
   *
   * [showDeleted] - If set to true retrieves the list of deleted users. Default is false
   *
   * [sortOrder] - Whether to return results in ascending or descending order.
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Users> list({core.String customer, core.String domain, core.String event, core.int maxResults, core.String orderBy, core.String pageToken, core.String query, core.String showDeleted, core.String sortOrder, core.Map optParams}) {
    var url = "users";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customer != null) queryParams["customer"] = customer;
    if (domain != null) queryParams["domain"] = domain;
    if (event != null && !["add", "delete", "makeAdmin", "undelete", "update"].contains(event)) {
      paramErrors.add("Allowed values for event: add, delete, makeAdmin, undelete, update");
    }
    if (event != null) queryParams["event"] = event;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["email", "familyName", "givenName"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: email, familyName, givenName");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (query != null) queryParams["query"] = query;
    if (showDeleted != null) queryParams["showDeleted"] = showDeleted;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Users.fromJson(data));
  }

  /**
   * change admin status of a user
   *
   * [request] - UserMakeAdmin to send in this request
   *
   * [userKey] - Email or immutable Id of the user as admin
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> makeAdmin(UserMakeAdmin request, core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/makeAdmin";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * update user. This method supports patch semantics.
   *
   * [request] - User to send in this request
   *
   * [userKey] - Email or immutable Id of the user. If Id, it should match with id of user object
   *
   * [optParams] - Additional query parameters
   */
  async.Future<User> patch(User request, core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new User.fromJson(data));
  }

  /**
   * Undelete a deleted user
   *
   * [request] - UserUndelete to send in this request
   *
   * [userKey] - The immutable id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> undelete(UserUndelete request, core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/undelete";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * update user
   *
   * [request] - User to send in this request
   *
   * [userKey] - Email or immutable Id of the user. If Id, it should match with id of user object
   *
   * [optParams] - Additional query parameters
   */
  async.Future<User> update(User request, core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new User.fromJson(data));
  }

  /**
   * Watch for changes in users list
   *
   * [request] - Channel to send in this request
   *
   * [customer] - Immutable id of the Google Apps account. In case of multi-domain, to fetch all users for a customer, fill this field instead of domain.
   *
   * [domain] - Name of the domain. Fill this field to get users from only this domain. To return all users in a multi-domain fill customer field instead.
   *
   * [event] - Event on which subscription is intended (if subscribing)
   *   Allowed values:
   *     add - User Created Event
   *     delete - User Deleted Event
   *     makeAdmin - User Admin Status Change Event
   *     undelete - User Undeleted Event
   *     update - User Updated Event
   *
   * [maxResults] - Maximum number of results to return. Default is 100. Max allowed is 500
   *   Minimum: 1
   *   Maximum: 500
   *
   * [orderBy] - Column to use for sorting results
   *   Allowed values:
   *     email - Primary email of the user.
   *     familyName - User's family name.
   *     givenName - User's given name.
   *
   * [pageToken] - Token to specify next page in the list
   *
   * [query] - Query string search. Should be of the form "" where field can be any of supported fields, operators can be one of '=' for exact match or ':' for prefix match. For prefix match, the value should always be followed by a *.
   *
   * [showDeleted] - If set to true retrieves the list of deleted users. Default is false
   *
   * [sortOrder] - Whether to return results in ascending or descending order.
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Channel> watch(Channel request, {core.String customer, core.String domain, core.String event, core.int maxResults, core.String orderBy, core.String pageToken, core.String query, core.String showDeleted, core.String sortOrder, core.Map optParams}) {
    var url = "users/watch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customer != null) queryParams["customer"] = customer;
    if (domain != null) queryParams["domain"] = domain;
    if (event != null && !["add", "delete", "makeAdmin", "undelete", "update"].contains(event)) {
      paramErrors.add("Allowed values for event: add, delete, makeAdmin, undelete, update");
    }
    if (event != null) queryParams["event"] = event;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["email", "familyName", "givenName"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: email, familyName, givenName");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (query != null) queryParams["query"] = query;
    if (showDeleted != null) queryParams["showDeleted"] = showDeleted;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Channel.fromJson(data));
  }
}

class UsersAliasesResource_ {

  final Client _client;

  UsersAliasesResource_(Client client) :
      _client = client;

  /**
   * Remove a alias for the user
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [alias] - The alias to be removed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String userKey, core.String alias, {core.Map optParams}) {
    var url = "users/{userKey}/aliases/{alias}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (alias == null) paramErrors.add("alias is required");
    if (alias != null) urlParams["alias"] = alias;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Add a alias for the user
   *
   * [request] - Alias to send in this request
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Alias> insert(Alias request, core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/aliases";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Alias.fromJson(data));
  }

  /**
   * List all aliases for a user
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [event] - Event on which subscription is intended (if subscribing)
   *   Allowed values:
   *     add - Alias Created Event
   *     delete - Alias Deleted Event
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Aliases> list(core.String userKey, {core.String event, core.Map optParams}) {
    var url = "users/{userKey}/aliases";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (event != null && !["add", "delete"].contains(event)) {
      paramErrors.add("Allowed values for event: add, delete");
    }
    if (event != null) queryParams["event"] = event;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Aliases.fromJson(data));
  }

  /**
   * Watch for changes in user aliases list
   *
   * [request] - Channel to send in this request
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [event] - Event on which subscription is intended (if subscribing)
   *   Allowed values:
   *     add - Alias Created Event
   *     delete - Alias Deleted Event
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Channel> watch(Channel request, core.String userKey, {core.String event, core.Map optParams}) {
    var url = "users/{userKey}/aliases/watch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (event != null && !["add", "delete"].contains(event)) {
      paramErrors.add("Allowed values for event: add, delete");
    }
    if (event != null) queryParams["event"] = event;
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Channel.fromJson(data));
  }
}

class UsersPhotosResource_ {

  final Client _client;

  UsersPhotosResource_(Client client) :
      _client = client;

  /**
   * Remove photos for the user
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/photos/thumbnail";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieve photo of a user
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UserPhoto> get(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/photos/thumbnail";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UserPhoto.fromJson(data));
  }

  /**
   * Add a photo for the user. This method supports patch semantics.
   *
   * [request] - UserPhoto to send in this request
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UserPhoto> patch(UserPhoto request, core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/photos/thumbnail";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UserPhoto.fromJson(data));
  }

  /**
   * Add a photo for the user
   *
   * [request] - UserPhoto to send in this request
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UserPhoto> update(UserPhoto request, core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/photos/thumbnail";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UserPhoto.fromJson(data));
  }
}

class VerificationCodesResource_ {

  final Client _client;

  VerificationCodesResource_(Client client) :
      _client = client;

  /**
   * Generate new backup verification codes for the user.
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> generate(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/verificationCodes/generate";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Invalidate the current backup verification codes for the user.
   *
   * [userKey] - Email or immutable Id of the user
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> invalidate(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/verificationCodes/invalidate";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns the current set of valid backup verification codes for the specified user.
   *
   * [userKey] - Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VerificationCodes> list(core.String userKey, {core.Map optParams}) {
    var url = "users/{userKey}/verificationCodes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userKey == null) paramErrors.add("userKey is required");
    if (userKey != null) urlParams["userKey"] = userKey;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VerificationCodes.fromJson(data));
  }
}

