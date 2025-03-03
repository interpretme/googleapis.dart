// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Datastream API - v1
///
/// For more information, see <https://cloud.google.com/datastream/>
///
/// Create an instance of [DatastreamApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsConnectionProfilesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPrivateConnectionsResource]
///       - [ProjectsLocationsPrivateConnectionsRoutesResource]
///     - [ProjectsLocationsStreamsResource]
///       - [ProjectsLocationsStreamsObjectsResource]
library datastream.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class DatastreamApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DatastreamApi(http.Client client,
      {core.String rootUrl = 'https://datastream.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionProfilesResource get connectionProfiles =>
      ProjectsLocationsConnectionProfilesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPrivateConnectionsResource get privateConnections =>
      ProjectsLocationsPrivateConnectionsResource(_requester);
  ProjectsLocationsStreamsResource get streams =>
      ProjectsLocationsStreamsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// The FetchStaticIps API call exposes the static IP addresses used by
  /// Datastream.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for the location for which static IPs
  /// should be returned. Must be in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Ips to return, will likely not be
  /// specified.
  ///
  /// [pageToken] - A page token, received from a previous `ListStaticIps` call.
  /// will likely not be specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchStaticIpsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchStaticIpsResponse> fetchStaticIps(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':fetchStaticIps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FetchStaticIpsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Use this method to create a connection profile in a project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of
  /// ConnectionProfiles.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectionProfileId] - Required. The connection profile identifier.
  ///
  /// [force] - Optional. Create the connection profile without validating it.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. Only validate the connection profile, but don't
  /// create any resources. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    ConnectionProfile request,
    core.String parent, {
    core.String? connectionProfileId,
    core.bool? force,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (connectionProfileId != null)
        'connectionProfileId': [connectionProfileId],
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/connectionProfiles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to delete a connection profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connection profile resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to discover a connection profile.
  ///
  /// The discover API call exposes the data objects and metadata belonging to
  /// the profile. Typically, a request returns children data objects of a
  /// parent data object that's optionally supplied in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the connection profile type.
  /// Must be in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DiscoverConnectionProfileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DiscoverConnectionProfileResponse> discover(
    DiscoverConnectionProfileRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/connectionProfiles:discover';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DiscoverConnectionProfileResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to get details about a connection profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connection profile resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectionProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectionProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ConnectionProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to list connection profiles created in a project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of connection
  /// profiles.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter request.
  ///
  /// [orderBy] - Order by fields for the result.
  ///
  /// [pageSize] - Maximum number of connection profiles to return. If
  /// unspecified, at most 50 connection profiles will be returned. The maximum
  /// value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Page token received from a previous `ListConnectionProfiles`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListConnectionProfiles` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionProfilesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/connectionProfiles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListConnectionProfilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to update the parameters of a connection profile.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
  ///
  /// [force] - Optional. Update the connection profile without validating it.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the ConnectionProfile resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. Only validate the connection profile, but don't
  /// update any resources. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    ConnectionProfile request,
    core.String name, {
    core.bool? force,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPrivateConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateConnectionsRoutesResource get routes =>
      ProjectsLocationsPrivateConnectionsRoutesResource(_requester);

  ProjectsLocationsPrivateConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Use this method to create a private connectivity configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of
  /// PrivateConnections.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [privateConnectionId] - Required. The private connectivity identifier.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    PrivateConnection request,
    core.String parent, {
    core.String? privateConnectionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (privateConnectionId != null)
        'privateConnectionId': [privateConnectionId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/privateConnections';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to delete a private connectivity configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the private connectivity configuration to
  /// delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, any child routes that belong to this
  /// PrivateConnection will also be deleted.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to get details about a private connectivity configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the private connectivity configuration to
  /// get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PrivateConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PrivateConnection> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PrivateConnection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to list private connectivity configurations in a project
  /// and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of private
  /// connectivity configurations.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter request.
  ///
  /// [orderBy] - Order by fields for the result.
  ///
  /// [pageSize] - Maximum number of private connectivity configurations to
  /// return. If unspecified, at most 50 private connectivity configurations
  /// that will be returned. The maximum value is 1000; values above 1000 will
  /// be coerced to 1000.
  ///
  /// [pageToken] - Page token received from a previous `ListPrivateConnections`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListPrivateConnections` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrivateConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrivateConnectionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/privateConnections';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPrivateConnectionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPrivateConnectionsRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateConnectionsRoutesResource(commons.ApiRequester client)
      : _requester = client;

  /// Use this method to create a route for a private connectivity configuration
  /// in a project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of Routes.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [routeId] - Required. The Route identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Route request,
    core.String parent, {
    core.String? requestId,
    core.String? routeId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (routeId != null) 'routeId': [routeId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/routes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to delete a route.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Route resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+/routes/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to get details about a route.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Route resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+/routes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Route].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Route> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Route.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to list routes created for a private connectivity
  /// configuration in a project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of Routess.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [filter] - Filter request.
  ///
  /// [orderBy] - Order by fields for the result.
  ///
  /// [pageSize] - Maximum number of Routes to return. The service may return
  /// fewer than this value. If unspecified, at most 50 Routes will be returned.
  /// The maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Page token received from a previous `ListRoutes` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListRoutes` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRoutesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/routes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRoutesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsStreamsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStreamsObjectsResource get objects =>
      ProjectsLocationsStreamsObjectsResource(_requester);

  ProjectsLocationsStreamsResource(commons.ApiRequester client)
      : _requester = client;

  /// Use this method to create a stream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of streams.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [force] - Optional. Create the stream without validating it.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [streamId] - Required. The stream identifier.
  ///
  /// [validateOnly] - Optional. Only validate the stream, but don't create any
  /// resources. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Stream request,
    core.String parent, {
    core.bool? force,
    core.String? requestId,
    core.String? streamId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if (streamId != null) 'streamId': [streamId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/streams';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to delete a stream.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the stream resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/streams/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to get details about a stream.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the stream resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/streams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Stream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Stream> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Stream.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to list streams in a project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of streams.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter request.
  ///
  /// [orderBy] - Order by fields for the result.
  ///
  /// [pageSize] - Maximum number of streams to return. If unspecified, at most
  /// 50 streams will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - Page token received from a previous `ListStreams` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListStreams` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStreamsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStreamsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/streams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListStreamsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to update the configuration of a stream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The stream's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/streams/\[^/\]+$`.
  ///
  /// [force] - Optional. Update the stream without validating it.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the stream resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. Only validate the stream with the changes,
  /// without actually updating it. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    Stream request,
    core.String name, {
    core.bool? force,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsStreamsObjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStreamsObjectsResource(commons.ApiRequester client)
      : _requester = client;

  /// Use this method to get details about a stream object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the stream object resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/streams/\[^/\]+/objects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StreamObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StreamObject> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return StreamObject.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to list the objects of a specific stream.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent stream that owns the collection of
  /// objects.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/streams/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of objects to return. Default is 50. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Page token received from a previous
  /// `ListStreamObjectsRequest` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListStreamObjectsRequest` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStreamObjectsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStreamObjectsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/objects';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListStreamObjectsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to look up a stream object by its source object
  /// identifier.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent stream that owns the collection of
  /// objects.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/streams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StreamObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StreamObject> lookup(
    LookupStreamObjectRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/objects:lookup';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return StreamObject.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to start a backfill job for the specified stream object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [object] - Required. The name of the stream object resource to start a
  /// backfill job for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/streams/\[^/\]+/objects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StartBackfillJobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StartBackfillJobResponse> startBackfillJob(
    StartBackfillJobRequest request,
    core.String object, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$object') + ':startBackfillJob';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return StartBackfillJobResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Use this method to stop a backfill job for the specified stream object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [object] - Required. The name of the stream object resource to stop the
  /// backfill job for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/streams/\[^/\]+/objects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StopBackfillJobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StopBackfillJobResponse> stopBackfillJob(
    StopBackfillJobRequest request,
    core.String object, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$object') + ':stopBackfillJob';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return StopBackfillJobResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// AVRO file format configuration.
typedef AvroFileFormat = $Empty;

/// Backfill strategy to automatically backfill the Stream's objects.
///
/// Specific objects can be excluded.
class BackfillAllStrategy {
  /// MySQL data source objects to avoid backfilling.
  MysqlRdbms? mysqlExcludedObjects;

  /// Oracle data source objects to avoid backfilling.
  OracleRdbms? oracleExcludedObjects;

  BackfillAllStrategy({
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
  });

  BackfillAllStrategy.fromJson(core.Map _json)
      : this(
          mysqlExcludedObjects: _json.containsKey('mysqlExcludedObjects')
              ? MysqlRdbms.fromJson(_json['mysqlExcludedObjects']
                  as core.Map<core.String, core.dynamic>)
              : null,
          oracleExcludedObjects: _json.containsKey('oracleExcludedObjects')
              ? OracleRdbms.fromJson(_json['oracleExcludedObjects']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlExcludedObjects != null)
          'mysqlExcludedObjects': mysqlExcludedObjects!,
        if (oracleExcludedObjects != null)
          'oracleExcludedObjects': oracleExcludedObjects!,
      };
}

/// Represents a backfill job on a specific stream object.
class BackfillJob {
  /// Errors which caused the backfill job to fail.
  ///
  /// Output only.
  core.List<Error>? errors;

  /// Backfill job's end time.
  ///
  /// Output only.
  core.String? lastEndTime;

  /// Backfill job's start time.
  ///
  /// Output only.
  core.String? lastStartTime;

  /// Backfill job state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value.
  /// - "NOT_STARTED" : Backfill job was never started for the stream object
  /// (stream has backfill strategy defined as manual or object was explicitly
  /// excluded from automatic backfill).
  /// - "PENDING" : Backfill job will start pending available resources.
  /// - "ACTIVE" : Backfill job is running.
  /// - "STOPPED" : Backfill job stopped (next job run will start from
  /// beginning).
  /// - "FAILED" : Backfill job failed (due to an error).
  /// - "COMPLETED" : Backfill completed successfully.
  /// - "UNSUPPORTED" : Backfill job failed since the table structure is
  /// currently unsupported for backfill.
  core.String? state;

  /// Backfill job's triggering reason.
  /// Possible string values are:
  /// - "TRIGGER_UNSPECIFIED" : Default value.
  /// - "AUTOMATIC" : Object backfill job was triggered automatically according
  /// to the stream's backfill strategy.
  /// - "MANUAL" : Object backfill job was triggered manually using the
  /// dedicated API.
  core.String? trigger;

  BackfillJob({
    this.errors,
    this.lastEndTime,
    this.lastStartTime,
    this.state,
    this.trigger,
  });

  BackfillJob.fromJson(core.Map _json)
      : this(
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lastEndTime: _json.containsKey('lastEndTime')
              ? _json['lastEndTime'] as core.String
              : null,
          lastStartTime: _json.containsKey('lastStartTime')
              ? _json['lastStartTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          trigger: _json.containsKey('trigger')
              ? _json['trigger'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (lastEndTime != null) 'lastEndTime': lastEndTime!,
        if (lastStartTime != null) 'lastStartTime': lastStartTime!,
        if (state != null) 'state': state!,
        if (trigger != null) 'trigger': trigger!,
      };
}

/// Backfill strategy to disable automatic backfill for the Stream's objects.
typedef BackfillNoneStrategy = $Empty;

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A set of reusable connection configurations to be used as a source or
/// destination for a stream.
class ConnectionProfile {
  /// The create time of the resource.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name.
  ///
  /// Required.
  core.String? displayName;

  /// Forward SSH tunnel connectivity.
  ForwardSshTunnelConnectivity? forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  GcsProfile? gcsProfile;

  /// Labels.
  core.Map<core.String, core.String>? labels;

  /// MySQL ConnectionProfile configuration.
  MysqlProfile? mysqlProfile;

  /// The resource's name.
  ///
  /// Output only.
  core.String? name;

  /// Oracle ConnectionProfile configuration.
  OracleProfile? oracleProfile;

  /// Private connectivity.
  PrivateConnectivity? privateConnectivity;

  /// Static Service IP connectivity.
  StaticServiceIpConnectivity? staticServiceIpConnectivity;

  /// The update time of the resource.
  ///
  /// Output only.
  core.String? updateTime;

  ConnectionProfile({
    this.createTime,
    this.displayName,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    this.mysqlProfile,
    this.name,
    this.oracleProfile,
    this.privateConnectivity,
    this.staticServiceIpConnectivity,
    this.updateTime,
  });

  ConnectionProfile.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          forwardSshConnectivity: _json.containsKey('forwardSshConnectivity')
              ? ForwardSshTunnelConnectivity.fromJson(
                  _json['forwardSshConnectivity']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsProfile: _json.containsKey('gcsProfile')
              ? GcsProfile.fromJson(
                  _json['gcsProfile'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          mysqlProfile: _json.containsKey('mysqlProfile')
              ? MysqlProfile.fromJson(
                  _json['mysqlProfile'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          oracleProfile: _json.containsKey('oracleProfile')
              ? OracleProfile.fromJson(
                  _json['oracleProfile'] as core.Map<core.String, core.dynamic>)
              : null,
          privateConnectivity: _json.containsKey('privateConnectivity')
              ? PrivateConnectivity.fromJson(_json['privateConnectivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          staticServiceIpConnectivity:
              _json.containsKey('staticServiceIpConnectivity')
                  ? StaticServiceIpConnectivity.fromJson(
                      _json['staticServiceIpConnectivity']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (forwardSshConnectivity != null)
          'forwardSshConnectivity': forwardSshConnectivity!,
        if (gcsProfile != null) 'gcsProfile': gcsProfile!,
        if (labels != null) 'labels': labels!,
        if (mysqlProfile != null) 'mysqlProfile': mysqlProfile!,
        if (name != null) 'name': name!,
        if (oracleProfile != null) 'oracleProfile': oracleProfile!,
        if (privateConnectivity != null)
          'privateConnectivity': privateConnectivity!,
        if (staticServiceIpConnectivity != null)
          'staticServiceIpConnectivity': staticServiceIpConnectivity!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The configuration of the stream destination.
class DestinationConfig {
  /// Destination connection profile resource.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/connectionProfiles/{name}`
  ///
  /// Required.
  core.String? destinationConnectionProfile;

  /// A configuration for how data should be loaded to Cloud Storage.
  GcsDestinationConfig? gcsDestinationConfig;

  DestinationConfig({
    this.destinationConnectionProfile,
    this.gcsDestinationConfig,
  });

  DestinationConfig.fromJson(core.Map _json)
      : this(
          destinationConnectionProfile:
              _json.containsKey('destinationConnectionProfile')
                  ? _json['destinationConnectionProfile'] as core.String
                  : null,
          gcsDestinationConfig: _json.containsKey('gcsDestinationConfig')
              ? GcsDestinationConfig.fromJson(_json['gcsDestinationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationConnectionProfile != null)
          'destinationConnectionProfile': destinationConnectionProfile!,
        if (gcsDestinationConfig != null)
          'gcsDestinationConfig': gcsDestinationConfig!,
      };
}

/// Request message for 'discover' ConnectionProfile request.
class DiscoverConnectionProfileRequest {
  /// An ad-hoc connection profile configuration.
  ConnectionProfile? connectionProfile;

  /// A reference to an existing connection profile.
  core.String? connectionProfileName;

  /// Whether to retrieve the full hierarchy of data objects (TRUE) or only the
  /// current level (FALSE).
  core.bool? fullHierarchy;

  /// The number of hierarchy levels below the current level to be retrieved.
  core.int? hierarchyDepth;

  /// MySQL RDBMS to enrich with child data objects and metadata.
  MysqlRdbms? mysqlRdbms;

  /// Oracle RDBMS to enrich with child data objects and metadata.
  OracleRdbms? oracleRdbms;

  DiscoverConnectionProfileRequest({
    this.connectionProfile,
    this.connectionProfileName,
    this.fullHierarchy,
    this.hierarchyDepth,
    this.mysqlRdbms,
    this.oracleRdbms,
  });

  DiscoverConnectionProfileRequest.fromJson(core.Map _json)
      : this(
          connectionProfile: _json.containsKey('connectionProfile')
              ? ConnectionProfile.fromJson(_json['connectionProfile']
                  as core.Map<core.String, core.dynamic>)
              : null,
          connectionProfileName: _json.containsKey('connectionProfileName')
              ? _json['connectionProfileName'] as core.String
              : null,
          fullHierarchy: _json.containsKey('fullHierarchy')
              ? _json['fullHierarchy'] as core.bool
              : null,
          hierarchyDepth: _json.containsKey('hierarchyDepth')
              ? _json['hierarchyDepth'] as core.int
              : null,
          mysqlRdbms: _json.containsKey('mysqlRdbms')
              ? MysqlRdbms.fromJson(
                  _json['mysqlRdbms'] as core.Map<core.String, core.dynamic>)
              : null,
          oracleRdbms: _json.containsKey('oracleRdbms')
              ? OracleRdbms.fromJson(
                  _json['oracleRdbms'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionProfile != null) 'connectionProfile': connectionProfile!,
        if (connectionProfileName != null)
          'connectionProfileName': connectionProfileName!,
        if (fullHierarchy != null) 'fullHierarchy': fullHierarchy!,
        if (hierarchyDepth != null) 'hierarchyDepth': hierarchyDepth!,
        if (mysqlRdbms != null) 'mysqlRdbms': mysqlRdbms!,
        if (oracleRdbms != null) 'oracleRdbms': oracleRdbms!,
      };
}

/// Response from a discover request.
class DiscoverConnectionProfileResponse {
  /// Enriched MySQL RDBMS object.
  MysqlRdbms? mysqlRdbms;

  /// Enriched Oracle RDBMS object.
  OracleRdbms? oracleRdbms;

  DiscoverConnectionProfileResponse({
    this.mysqlRdbms,
    this.oracleRdbms,
  });

  DiscoverConnectionProfileResponse.fromJson(core.Map _json)
      : this(
          mysqlRdbms: _json.containsKey('mysqlRdbms')
              ? MysqlRdbms.fromJson(
                  _json['mysqlRdbms'] as core.Map<core.String, core.dynamic>)
              : null,
          oracleRdbms: _json.containsKey('oracleRdbms')
              ? OracleRdbms.fromJson(
                  _json['oracleRdbms'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlRdbms != null) 'mysqlRdbms': mysqlRdbms!,
        if (oracleRdbms != null) 'oracleRdbms': oracleRdbms!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// Represent a user-facing Error.
class Error {
  /// Additional information about the error.
  core.Map<core.String, core.String>? details;

  /// The time when the error occurred.
  core.String? errorTime;

  /// A unique identifier for this specific error, allowing it to be traced
  /// throughout the system in logs and API responses.
  core.String? errorUuid;

  /// A message containing more information about the error that occurred.
  core.String? message;

  /// A title that explains the reason for the error.
  core.String? reason;

  Error({
    this.details,
    this.errorTime,
    this.errorUuid,
    this.message,
    this.reason,
  });

  Error.fromJson(core.Map _json)
      : this(
          details: _json.containsKey('details')
              ? (_json['details'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          errorTime: _json.containsKey('errorTime')
              ? _json['errorTime'] as core.String
              : null,
          errorUuid: _json.containsKey('errorUuid')
              ? _json['errorUuid'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (errorTime != null) 'errorTime': errorTime!,
        if (errorUuid != null) 'errorUuid': errorUuid!,
        if (message != null) 'message': message!,
        if (reason != null) 'reason': reason!,
      };
}

/// Response message for a 'FetchStaticIps' response.
class FetchStaticIpsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// list of static ips by account
  core.List<core.String>? staticIps;

  FetchStaticIpsResponse({
    this.nextPageToken,
    this.staticIps,
  });

  FetchStaticIpsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          staticIps: _json.containsKey('staticIps')
              ? (_json['staticIps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (staticIps != null) 'staticIps': staticIps!,
      };
}

/// Forward SSH Tunnel connectivity.
class ForwardSshTunnelConnectivity {
  /// Hostname for the SSH tunnel.
  ///
  /// Required.
  core.String? hostname;

  /// Input only.
  ///
  /// SSH password.
  core.String? password;

  /// Port for the SSH tunnel, default value is 22.
  core.int? port;

  /// Input only.
  ///
  /// SSH private key.
  core.String? privateKey;

  /// Username for the SSH tunnel.
  ///
  /// Required.
  core.String? username;

  ForwardSshTunnelConnectivity({
    this.hostname,
    this.password,
    this.port,
    this.privateKey,
    this.username,
  });

  ForwardSshTunnelConnectivity.fromJson(core.Map _json)
      : this(
          hostname: _json.containsKey('hostname')
              ? _json['hostname'] as core.String
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.int : null,
          privateKey: _json.containsKey('privateKey')
              ? _json['privateKey'] as core.String
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostname != null) 'hostname': hostname!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (privateKey != null) 'privateKey': privateKey!,
        if (username != null) 'username': username!,
      };
}

/// Google Cloud Storage destination configuration
class GcsDestinationConfig {
  /// AVRO file format configuration.
  AvroFileFormat? avroFileFormat;

  /// The maximum duration for which new events are added before a file is
  /// closed and a new file is created.
  core.String? fileRotationInterval;

  /// The maximum file size to be saved in the bucket.
  core.int? fileRotationMb;

  /// JSON file format configuration.
  JsonFileFormat? jsonFileFormat;

  /// Path inside the Cloud Storage bucket to write data to.
  core.String? path;

  GcsDestinationConfig({
    this.avroFileFormat,
    this.fileRotationInterval,
    this.fileRotationMb,
    this.jsonFileFormat,
    this.path,
  });

  GcsDestinationConfig.fromJson(core.Map _json)
      : this(
          avroFileFormat: _json.containsKey('avroFileFormat')
              ? AvroFileFormat.fromJson(_json['avroFileFormat']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fileRotationInterval: _json.containsKey('fileRotationInterval')
              ? _json['fileRotationInterval'] as core.String
              : null,
          fileRotationMb: _json.containsKey('fileRotationMb')
              ? _json['fileRotationMb'] as core.int
              : null,
          jsonFileFormat: _json.containsKey('jsonFileFormat')
              ? JsonFileFormat.fromJson(_json['jsonFileFormat']
                  as core.Map<core.String, core.dynamic>)
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avroFileFormat != null) 'avroFileFormat': avroFileFormat!,
        if (fileRotationInterval != null)
          'fileRotationInterval': fileRotationInterval!,
        if (fileRotationMb != null) 'fileRotationMb': fileRotationMb!,
        if (jsonFileFormat != null) 'jsonFileFormat': jsonFileFormat!,
        if (path != null) 'path': path!,
      };
}

/// Cloud Storage bucket profile.
class GcsProfile {
  /// The Cloud Storage bucket name.
  ///
  /// Required.
  core.String? bucket;

  /// The root path inside the Cloud Storage bucket.
  core.String? rootPath;

  GcsProfile({
    this.bucket,
    this.rootPath,
  });

  GcsProfile.fromJson(core.Map _json)
      : this(
          bucket: _json.containsKey('bucket')
              ? _json['bucket'] as core.String
              : null,
          rootPath: _json.containsKey('rootPath')
              ? _json['rootPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucket != null) 'bucket': bucket!,
        if (rootPath != null) 'rootPath': rootPath!,
      };
}

/// JSON file format configuration.
class JsonFileFormat {
  /// Compression of the loaded JSON file.
  /// Possible string values are:
  /// - "JSON_COMPRESSION_UNSPECIFIED" : Unspecified json file compression.
  /// - "NO_COMPRESSION" : Do not compress JSON file.
  /// - "GZIP" : Gzip compression.
  core.String? compression;

  /// The schema file format along JSON data files.
  /// Possible string values are:
  /// - "SCHEMA_FILE_FORMAT_UNSPECIFIED" : Unspecified schema file format.
  /// - "NO_SCHEMA_FILE" : Do not attach schema file.
  /// - "AVRO_SCHEMA_FILE" : Avro schema format.
  core.String? schemaFileFormat;

  JsonFileFormat({
    this.compression,
    this.schemaFileFormat,
  });

  JsonFileFormat.fromJson(core.Map _json)
      : this(
          compression: _json.containsKey('compression')
              ? _json['compression'] as core.String
              : null,
          schemaFileFormat: _json.containsKey('schemaFileFormat')
              ? _json['schemaFileFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compression != null) 'compression': compression!,
        if (schemaFileFormat != null) 'schemaFileFormat': schemaFileFormat!,
      };
}

/// Response message for listing connection profiles.
class ListConnectionProfilesResponse {
  /// List of connection profiles.
  core.List<ConnectionProfile>? connectionProfiles;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectionProfilesResponse({
    this.connectionProfiles,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectionProfilesResponse.fromJson(core.Map _json)
      : this(
          connectionProfiles: _json.containsKey('connectionProfiles')
              ? (_json['connectionProfiles'] as core.List)
                  .map((value) => ConnectionProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionProfiles != null)
          'connectionProfiles': connectionProfiles!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response containing a list of private connection configurations.
class ListPrivateConnectionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of private connectivity configurations.
  core.List<PrivateConnection>? privateConnections;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListPrivateConnectionsResponse({
    this.nextPageToken,
    this.privateConnections,
    this.unreachable,
  });

  ListPrivateConnectionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          privateConnections: _json.containsKey('privateConnections')
              ? (_json['privateConnections'] as core.List)
                  .map((value) => PrivateConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (privateConnections != null)
          'privateConnections': privateConnections!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Route list response.
class ListRoutesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of Routes.
  core.List<Route>? routes;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRoutesResponse({
    this.nextPageToken,
    this.routes,
    this.unreachable,
  });

  ListRoutesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          routes: _json.containsKey('routes')
              ? (_json['routes'] as core.List)
                  .map((value) => Route.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (routes != null) 'routes': routes!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response containing the objects for a stream.
class ListStreamObjectsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  core.String? nextPageToken;

  /// List of stream objects.
  core.List<StreamObject>? streamObjects;

  ListStreamObjectsResponse({
    this.nextPageToken,
    this.streamObjects,
  });

  ListStreamObjectsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          streamObjects: _json.containsKey('streamObjects')
              ? (_json['streamObjects'] as core.List)
                  .map((value) => StreamObject.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (streamObjects != null) 'streamObjects': streamObjects!,
      };
}

/// Response message for listing streams.
class ListStreamsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of streams
  core.List<Stream>? streams;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListStreamsResponse({
    this.nextPageToken,
    this.streams,
    this.unreachable,
  });

  ListStreamsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          streams: _json.containsKey('streams')
              ? (_json['streams'] as core.List)
                  .map((value) => Stream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (streams != null) 'streams': streams!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Request for looking up a specific stream object by its source object
/// identifier.
class LookupStreamObjectRequest {
  /// The source object identifier which maps to the stream object.
  ///
  /// Required.
  SourceObjectIdentifier? sourceObjectIdentifier;

  LookupStreamObjectRequest({
    this.sourceObjectIdentifier,
  });

  LookupStreamObjectRequest.fromJson(core.Map _json)
      : this(
          sourceObjectIdentifier: _json.containsKey('sourceObjectIdentifier')
              ? SourceObjectIdentifier.fromJson(_json['sourceObjectIdentifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceObjectIdentifier != null)
          'sourceObjectIdentifier': sourceObjectIdentifier!,
      };
}

/// MySQL Column.
class MysqlColumn {
  /// Column collation.
  core.String? collation;

  /// Column name.
  core.String? column;

  /// The MySQL data type.
  ///
  /// Full data types list can be found here:
  /// https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  core.String? dataType;

  /// Column length.
  core.int? length;

  /// Whether or not the column can accept a null value.
  core.bool? nullable;

  /// The ordinal position of the column in the table.
  core.int? ordinalPosition;

  /// Whether or not the column represents a primary key.
  core.bool? primaryKey;

  MysqlColumn({
    this.collation,
    this.column,
    this.dataType,
    this.length,
    this.nullable,
    this.ordinalPosition,
    this.primaryKey,
  });

  MysqlColumn.fromJson(core.Map _json)
      : this(
          collation: _json.containsKey('collation')
              ? _json['collation'] as core.String
              : null,
          column: _json.containsKey('column')
              ? _json['column'] as core.String
              : null,
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          length:
              _json.containsKey('length') ? _json['length'] as core.int : null,
          nullable: _json.containsKey('nullable')
              ? _json['nullable'] as core.bool
              : null,
          ordinalPosition: _json.containsKey('ordinalPosition')
              ? _json['ordinalPosition'] as core.int
              : null,
          primaryKey: _json.containsKey('primaryKey')
              ? _json['primaryKey'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collation != null) 'collation': collation!,
        if (column != null) 'column': column!,
        if (dataType != null) 'dataType': dataType!,
        if (length != null) 'length': length!,
        if (nullable != null) 'nullable': nullable!,
        if (ordinalPosition != null) 'ordinalPosition': ordinalPosition!,
        if (primaryKey != null) 'primaryKey': primaryKey!,
      };
}

/// MySQL database.
class MysqlDatabase {
  /// Database name.
  core.String? database;

  /// Tables in the database.
  core.List<MysqlTable>? mysqlTables;

  MysqlDatabase({
    this.database,
    this.mysqlTables,
  });

  MysqlDatabase.fromJson(core.Map _json)
      : this(
          database: _json.containsKey('database')
              ? _json['database'] as core.String
              : null,
          mysqlTables: _json.containsKey('mysqlTables')
              ? (_json['mysqlTables'] as core.List)
                  .map((value) => MysqlTable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
        if (mysqlTables != null) 'mysqlTables': mysqlTables!,
      };
}

/// Mysql data source object identifier.
class MysqlObjectIdentifier {
  /// The database name.
  ///
  /// Required.
  core.String? database;

  /// The table name.
  ///
  /// Required.
  core.String? table;

  MysqlObjectIdentifier({
    this.database,
    this.table,
  });

  MysqlObjectIdentifier.fromJson(core.Map _json)
      : this(
          database: _json.containsKey('database')
              ? _json['database'] as core.String
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
        if (table != null) 'table': table!,
      };
}

/// MySQL database profile.
class MysqlProfile {
  /// Hostname for the MySQL connection.
  ///
  /// Required.
  core.String? hostname;

  /// Input only.
  ///
  /// Password for the MySQL connection.
  ///
  /// Required.
  core.String? password;

  /// Port for the MySQL connection, default value is 3306.
  core.int? port;

  /// SSL configuration for the MySQL connection.
  MysqlSslConfig? sslConfig;

  /// Username for the MySQL connection.
  ///
  /// Required.
  core.String? username;

  MysqlProfile({
    this.hostname,
    this.password,
    this.port,
    this.sslConfig,
    this.username,
  });

  MysqlProfile.fromJson(core.Map _json)
      : this(
          hostname: _json.containsKey('hostname')
              ? _json['hostname'] as core.String
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.int : null,
          sslConfig: _json.containsKey('sslConfig')
              ? MysqlSslConfig.fromJson(
                  _json['sslConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hostname != null) 'hostname': hostname!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (sslConfig != null) 'sslConfig': sslConfig!,
        if (username != null) 'username': username!,
      };
}

/// MySQL database structure
class MysqlRdbms {
  /// Mysql databases on the server
  core.List<MysqlDatabase>? mysqlDatabases;

  MysqlRdbms({
    this.mysqlDatabases,
  });

  MysqlRdbms.fromJson(core.Map _json)
      : this(
          mysqlDatabases: _json.containsKey('mysqlDatabases')
              ? (_json['mysqlDatabases'] as core.List)
                  .map((value) => MysqlDatabase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlDatabases != null) 'mysqlDatabases': mysqlDatabases!,
      };
}

/// MySQL source configuration
class MysqlSourceConfig {
  /// MySQL objects to exclude from the stream.
  MysqlRdbms? excludeObjects;

  /// MySQL objects to retrieve from the source.
  MysqlRdbms? includeObjects;

  MysqlSourceConfig({
    this.excludeObjects,
    this.includeObjects,
  });

  MysqlSourceConfig.fromJson(core.Map _json)
      : this(
          excludeObjects: _json.containsKey('excludeObjects')
              ? MysqlRdbms.fromJson(_json['excludeObjects']
                  as core.Map<core.String, core.dynamic>)
              : null,
          includeObjects: _json.containsKey('includeObjects')
              ? MysqlRdbms.fromJson(_json['includeObjects']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludeObjects != null) 'excludeObjects': excludeObjects!,
        if (includeObjects != null) 'includeObjects': includeObjects!,
      };
}

/// MySQL SSL configuration information.
class MysqlSslConfig {
  /// Input only.
  ///
  /// PEM-encoded certificate of the CA that signed the source database server's
  /// certificate.
  core.String? caCertificate;

  /// Indicates whether the ca_certificate field is set.
  ///
  /// Output only.
  core.bool? caCertificateSet;

  /// Input only.
  ///
  /// PEM-encoded certificate that will be used by the replica to authenticate
  /// against the source database server. If this field is used then the
  /// 'client_key' and the 'ca_certificate' fields are mandatory.
  core.String? clientCertificate;

  /// Indicates whether the client_certificate field is set.
  ///
  /// Output only.
  core.bool? clientCertificateSet;

  /// Input only.
  ///
  /// PEM-encoded private key associated with the Client Certificate. If this
  /// field is used then the 'client_certificate' and the 'ca_certificate'
  /// fields are mandatory.
  core.String? clientKey;

  /// Indicates whether the client_key field is set.
  ///
  /// Output only.
  core.bool? clientKeySet;

  MysqlSslConfig({
    this.caCertificate,
    this.caCertificateSet,
    this.clientCertificate,
    this.clientCertificateSet,
    this.clientKey,
    this.clientKeySet,
  });

  MysqlSslConfig.fromJson(core.Map _json)
      : this(
          caCertificate: _json.containsKey('caCertificate')
              ? _json['caCertificate'] as core.String
              : null,
          caCertificateSet: _json.containsKey('caCertificateSet')
              ? _json['caCertificateSet'] as core.bool
              : null,
          clientCertificate: _json.containsKey('clientCertificate')
              ? _json['clientCertificate'] as core.String
              : null,
          clientCertificateSet: _json.containsKey('clientCertificateSet')
              ? _json['clientCertificateSet'] as core.bool
              : null,
          clientKey: _json.containsKey('clientKey')
              ? _json['clientKey'] as core.String
              : null,
          clientKeySet: _json.containsKey('clientKeySet')
              ? _json['clientKeySet'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caCertificate != null) 'caCertificate': caCertificate!,
        if (caCertificateSet != null) 'caCertificateSet': caCertificateSet!,
        if (clientCertificate != null) 'clientCertificate': clientCertificate!,
        if (clientCertificateSet != null)
          'clientCertificateSet': clientCertificateSet!,
        if (clientKey != null) 'clientKey': clientKey!,
        if (clientKeySet != null) 'clientKeySet': clientKeySet!,
      };
}

/// MySQL table.
class MysqlTable {
  /// MySQL columns in the database.
  ///
  /// When unspecified as part of include/exclude lists, includes/excludes
  /// everything.
  core.List<MysqlColumn>? mysqlColumns;

  /// Table name.
  core.String? table;

  MysqlTable({
    this.mysqlColumns,
    this.table,
  });

  MysqlTable.fromJson(core.Map _json)
      : this(
          mysqlColumns: _json.containsKey('mysqlColumns')
              ? (_json['mysqlColumns'] as core.List)
                  .map((value) => MysqlColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlColumns != null) 'mysqlColumns': mysqlColumns!,
        if (table != null) 'table': table!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// Oracle Column.
class OracleColumn {
  /// Column name.
  core.String? column;

  /// The Oracle data type.
  core.String? dataType;

  /// Column encoding.
  core.String? encoding;

  /// Column length.
  core.int? length;

  /// Whether or not the column can accept a null value.
  core.bool? nullable;

  /// The ordinal position of the column in the table.
  core.int? ordinalPosition;

  /// Column precision.
  core.int? precision;

  /// Whether or not the column represents a primary key.
  core.bool? primaryKey;

  /// Column scale.
  core.int? scale;

  OracleColumn({
    this.column,
    this.dataType,
    this.encoding,
    this.length,
    this.nullable,
    this.ordinalPosition,
    this.precision,
    this.primaryKey,
    this.scale,
  });

  OracleColumn.fromJson(core.Map _json)
      : this(
          column: _json.containsKey('column')
              ? _json['column'] as core.String
              : null,
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
          length:
              _json.containsKey('length') ? _json['length'] as core.int : null,
          nullable: _json.containsKey('nullable')
              ? _json['nullable'] as core.bool
              : null,
          ordinalPosition: _json.containsKey('ordinalPosition')
              ? _json['ordinalPosition'] as core.int
              : null,
          precision: _json.containsKey('precision')
              ? _json['precision'] as core.int
              : null,
          primaryKey: _json.containsKey('primaryKey')
              ? _json['primaryKey'] as core.bool
              : null,
          scale: _json.containsKey('scale') ? _json['scale'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (dataType != null) 'dataType': dataType!,
        if (encoding != null) 'encoding': encoding!,
        if (length != null) 'length': length!,
        if (nullable != null) 'nullable': nullable!,
        if (ordinalPosition != null) 'ordinalPosition': ordinalPosition!,
        if (precision != null) 'precision': precision!,
        if (primaryKey != null) 'primaryKey': primaryKey!,
        if (scale != null) 'scale': scale!,
      };
}

/// Oracle data source object identifier.
class OracleObjectIdentifier {
  /// The schema name.
  ///
  /// Required.
  core.String? schema;

  /// The table name.
  ///
  /// Required.
  core.String? table;

  OracleObjectIdentifier({
    this.schema,
    this.table,
  });

  OracleObjectIdentifier.fromJson(core.Map _json)
      : this(
          schema: _json.containsKey('schema')
              ? _json['schema'] as core.String
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schema != null) 'schema': schema!,
        if (table != null) 'table': table!,
      };
}

/// Oracle database profile.
class OracleProfile {
  /// Connection string attributes
  core.Map<core.String, core.String>? connectionAttributes;

  /// Database for the Oracle connection.
  ///
  /// Required.
  core.String? databaseService;

  /// Hostname for the Oracle connection.
  ///
  /// Required.
  core.String? hostname;

  /// Password for the Oracle connection.
  ///
  /// Required.
  core.String? password;

  /// Port for the Oracle connection, default value is 1521.
  core.int? port;

  /// Username for the Oracle connection.
  ///
  /// Required.
  core.String? username;

  OracleProfile({
    this.connectionAttributes,
    this.databaseService,
    this.hostname,
    this.password,
    this.port,
    this.username,
  });

  OracleProfile.fromJson(core.Map _json)
      : this(
          connectionAttributes: _json.containsKey('connectionAttributes')
              ? (_json['connectionAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          databaseService: _json.containsKey('databaseService')
              ? _json['databaseService'] as core.String
              : null,
          hostname: _json.containsKey('hostname')
              ? _json['hostname'] as core.String
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          port: _json.containsKey('port') ? _json['port'] as core.int : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionAttributes != null)
          'connectionAttributes': connectionAttributes!,
        if (databaseService != null) 'databaseService': databaseService!,
        if (hostname != null) 'hostname': hostname!,
        if (password != null) 'password': password!,
        if (port != null) 'port': port!,
        if (username != null) 'username': username!,
      };
}

/// Oracle database structure.
class OracleRdbms {
  /// Oracle schemas/databases in the database server.
  core.List<OracleSchema>? oracleSchemas;

  OracleRdbms({
    this.oracleSchemas,
  });

  OracleRdbms.fromJson(core.Map _json)
      : this(
          oracleSchemas: _json.containsKey('oracleSchemas')
              ? (_json['oracleSchemas'] as core.List)
                  .map((value) => OracleSchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oracleSchemas != null) 'oracleSchemas': oracleSchemas!,
      };
}

/// Oracle schema.
class OracleSchema {
  /// Tables in the schema.
  core.List<OracleTable>? oracleTables;

  /// Schema name.
  core.String? schema;

  OracleSchema({
    this.oracleTables,
    this.schema,
  });

  OracleSchema.fromJson(core.Map _json)
      : this(
          oracleTables: _json.containsKey('oracleTables')
              ? (_json['oracleTables'] as core.List)
                  .map((value) => OracleTable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schema: _json.containsKey('schema')
              ? _json['schema'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oracleTables != null) 'oracleTables': oracleTables!,
        if (schema != null) 'schema': schema!,
      };
}

/// Oracle data source configuration
class OracleSourceConfig {
  /// Oracle objects to exclude from the stream.
  OracleRdbms? excludeObjects;

  /// Oracle objects to include in the stream.
  OracleRdbms? includeObjects;

  OracleSourceConfig({
    this.excludeObjects,
    this.includeObjects,
  });

  OracleSourceConfig.fromJson(core.Map _json)
      : this(
          excludeObjects: _json.containsKey('excludeObjects')
              ? OracleRdbms.fromJson(_json['excludeObjects']
                  as core.Map<core.String, core.dynamic>)
              : null,
          includeObjects: _json.containsKey('includeObjects')
              ? OracleRdbms.fromJson(_json['includeObjects']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludeObjects != null) 'excludeObjects': excludeObjects!,
        if (includeObjects != null) 'includeObjects': includeObjects!,
      };
}

/// Oracle table.
class OracleTable {
  /// Oracle columns in the schema.
  ///
  /// When unspecified as part of inclue/exclude lists, includes/excludes
  /// everything.
  core.List<OracleColumn>? oracleColumns;

  /// Table name.
  core.String? table;

  OracleTable({
    this.oracleColumns,
    this.table,
  });

  OracleTable.fromJson(core.Map _json)
      : this(
          oracleColumns: _json.containsKey('oracleColumns')
              ? (_json['oracleColumns'] as core.List)
                  .map((value) => OracleColumn.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oracleColumns != null) 'oracleColumns': oracleColumns!,
        if (table != null) 'table': table!,
      };
}

/// The PrivateConnection resource is used to establish private connectivity
/// between Datastream and a customer's network.
class PrivateConnection {
  /// The create time of the resource.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name.
  ///
  /// Required.
  core.String? displayName;

  /// In case of error, the details of the error in a user-friendly format.
  ///
  /// Output only.
  Error? error;

  /// Labels.
  core.Map<core.String, core.String>? labels;

  /// The resource's name.
  ///
  /// Output only.
  core.String? name;

  /// The state of the Private Connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CREATING" : The private connection is in creation state - creating
  /// resources.
  /// - "CREATED" : The private connection has been created with all of its
  /// resources.
  /// - "FAILED" : The private connection creation has failed.
  /// - "DELETING" : The private connection is being deleted.
  /// - "FAILED_TO_DELETE" : Delete request has failed, resource is in invalid
  /// state.
  core.String? state;

  /// The update time of the resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// VPC Peering Config.
  VpcPeeringConfig? vpcPeeringConfig;

  PrivateConnection({
    this.createTime,
    this.displayName,
    this.error,
    this.labels,
    this.name,
    this.state,
    this.updateTime,
    this.vpcPeeringConfig,
  });

  PrivateConnection.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          error: _json.containsKey('error')
              ? Error.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          vpcPeeringConfig: _json.containsKey('vpcPeeringConfig')
              ? VpcPeeringConfig.fromJson(_json['vpcPeeringConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (error != null) 'error': error!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vpcPeeringConfig != null) 'vpcPeeringConfig': vpcPeeringConfig!,
      };
}

/// Private Connectivity
class PrivateConnectivity {
  /// A reference to a private connection resource.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/privateConnections/{name}`
  ///
  /// Required.
  core.String? privateConnection;

  PrivateConnectivity({
    this.privateConnection,
  });

  PrivateConnectivity.fromJson(core.Map _json)
      : this(
          privateConnection: _json.containsKey('privateConnection')
              ? _json['privateConnection'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privateConnection != null) 'privateConnection': privateConnection!,
      };
}

/// The route resource is the child of the private connection resource, used for
/// defining a route for a private connection.
class Route {
  /// The create time of the resource.
  ///
  /// Output only.
  core.String? createTime;

  /// Destination address for connection
  ///
  /// Required.
  core.String? destinationAddress;

  /// Destination port for connection
  core.int? destinationPort;

  /// Display name.
  ///
  /// Required.
  core.String? displayName;

  /// Labels.
  core.Map<core.String, core.String>? labels;

  /// The resource's name.
  ///
  /// Output only.
  core.String? name;

  /// The update time of the resource.
  ///
  /// Output only.
  core.String? updateTime;

  Route({
    this.createTime,
    this.destinationAddress,
    this.destinationPort,
    this.displayName,
    this.labels,
    this.name,
    this.updateTime,
  });

  Route.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          destinationAddress: _json.containsKey('destinationAddress')
              ? _json['destinationAddress'] as core.String
              : null,
          destinationPort: _json.containsKey('destinationPort')
              ? _json['destinationPort'] as core.int
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (destinationAddress != null)
          'destinationAddress': destinationAddress!,
        if (destinationPort != null) 'destinationPort': destinationPort!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The configuration of the stream source.
class SourceConfig {
  /// MySQL data source configuration
  MysqlSourceConfig? mysqlSourceConfig;

  /// Oracle data source configuration
  OracleSourceConfig? oracleSourceConfig;

  /// Source connection profile resoource.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/connectionProfiles/{name}`
  ///
  /// Required.
  core.String? sourceConnectionProfile;

  SourceConfig({
    this.mysqlSourceConfig,
    this.oracleSourceConfig,
    this.sourceConnectionProfile,
  });

  SourceConfig.fromJson(core.Map _json)
      : this(
          mysqlSourceConfig: _json.containsKey('mysqlSourceConfig')
              ? MysqlSourceConfig.fromJson(_json['mysqlSourceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          oracleSourceConfig: _json.containsKey('oracleSourceConfig')
              ? OracleSourceConfig.fromJson(_json['oracleSourceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sourceConnectionProfile: _json.containsKey('sourceConnectionProfile')
              ? _json['sourceConnectionProfile'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlSourceConfig != null) 'mysqlSourceConfig': mysqlSourceConfig!,
        if (oracleSourceConfig != null)
          'oracleSourceConfig': oracleSourceConfig!,
        if (sourceConnectionProfile != null)
          'sourceConnectionProfile': sourceConnectionProfile!,
      };
}

/// Represents an identifier of an object in the data source.
class SourceObjectIdentifier {
  /// Mysql data source object identifier.
  MysqlObjectIdentifier? mysqlIdentifier;

  /// Oracle data source object identifier.
  OracleObjectIdentifier? oracleIdentifier;

  SourceObjectIdentifier({
    this.mysqlIdentifier,
    this.oracleIdentifier,
  });

  SourceObjectIdentifier.fromJson(core.Map _json)
      : this(
          mysqlIdentifier: _json.containsKey('mysqlIdentifier')
              ? MysqlObjectIdentifier.fromJson(_json['mysqlIdentifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          oracleIdentifier: _json.containsKey('oracleIdentifier')
              ? OracleObjectIdentifier.fromJson(_json['oracleIdentifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlIdentifier != null) 'mysqlIdentifier': mysqlIdentifier!,
        if (oracleIdentifier != null) 'oracleIdentifier': oracleIdentifier!,
      };
}

/// Request for manually initiating a backfill job for a specific stream object.
typedef StartBackfillJobRequest = $Empty;

/// Response for manually initiating a backfill job for a specific stream
/// object.
class StartBackfillJobResponse {
  /// The stream object resource a backfill job was started for.
  StreamObject? object;

  StartBackfillJobResponse({
    this.object,
  });

  StartBackfillJobResponse.fromJson(core.Map _json)
      : this(
          object: _json.containsKey('object')
              ? StreamObject.fromJson(
                  _json['object'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (object != null) 'object': object!,
      };
}

/// Static IP address connectivity.
typedef StaticServiceIpConnectivity = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request for manually stopping a running backfill job for a specific stream
/// object.
typedef StopBackfillJobRequest = $Empty;

/// Response for manually stop a backfill job for a specific stream object.
class StopBackfillJobResponse {
  /// The stream object resource the backfill job was stopped for.
  StreamObject? object;

  StopBackfillJobResponse({
    this.object,
  });

  StopBackfillJobResponse.fromJson(core.Map _json)
      : this(
          object: _json.containsKey('object')
              ? StreamObject.fromJson(
                  _json['object'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (object != null) 'object': object!,
      };
}

/// A resource representing streaming data from a source to a destination.
class Stream {
  /// Automatically backfill objects included in the stream source
  /// configuration.
  ///
  /// Specific objects can be excluded.
  BackfillAllStrategy? backfillAll;

  /// Do not automatically backfill any objects.
  BackfillNoneStrategy? backfillNone;

  /// The creation time of the stream.
  ///
  /// Output only.
  core.String? createTime;

  /// A reference to a KMS encryption key.
  ///
  /// If provided, it will be used to encrypt the data. If left blank, data will
  /// be encrypted using an internal Stream-specific encryption key provisioned
  /// through KMS.
  ///
  /// Immutable.
  core.String? customerManagedEncryptionKey;

  /// Destination connection profile configuration.
  ///
  /// Required.
  DestinationConfig? destinationConfig;

  /// Display name.
  ///
  /// Required.
  core.String? displayName;

  /// Errors on the Stream.
  ///
  /// Output only.
  core.List<Error>? errors;

  /// Labels.
  core.Map<core.String, core.String>? labels;

  /// The stream's name.
  ///
  /// Output only.
  core.String? name;

  /// Source connection profile configuration.
  ///
  /// Required.
  SourceConfig? sourceConfig;

  /// The state of the stream.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified stream state.
  /// - "NOT_STARTED" : The stream has been created but has not yet started
  /// streaming data.
  /// - "RUNNING" : The stream is running.
  /// - "PAUSED" : The stream is paused.
  /// - "MAINTENANCE" : The stream is in maintenance mode. Updates are rejected
  /// on the resource in this state.
  /// - "FAILED" : The stream is experiencing an error that is preventing data
  /// from being streamed.
  /// - "FAILED_PERMANENTLY" : The stream has experienced a terminal failure.
  /// - "STARTING" : The stream is starting, but not yet running.
  /// - "DRAINING" : The Stream is no longer reading new events, but still
  /// writing events in the buffer.
  core.String? state;

  /// The last update time of the stream.
  ///
  /// Output only.
  core.String? updateTime;

  Stream({
    this.backfillAll,
    this.backfillNone,
    this.createTime,
    this.customerManagedEncryptionKey,
    this.destinationConfig,
    this.displayName,
    this.errors,
    this.labels,
    this.name,
    this.sourceConfig,
    this.state,
    this.updateTime,
  });

  Stream.fromJson(core.Map _json)
      : this(
          backfillAll: _json.containsKey('backfillAll')
              ? BackfillAllStrategy.fromJson(
                  _json['backfillAll'] as core.Map<core.String, core.dynamic>)
              : null,
          backfillNone: _json.containsKey('backfillNone')
              ? BackfillNoneStrategy.fromJson(
                  _json['backfillNone'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          customerManagedEncryptionKey:
              _json.containsKey('customerManagedEncryptionKey')
                  ? _json['customerManagedEncryptionKey'] as core.String
                  : null,
          destinationConfig: _json.containsKey('destinationConfig')
              ? DestinationConfig.fromJson(_json['destinationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sourceConfig: _json.containsKey('sourceConfig')
              ? SourceConfig.fromJson(
                  _json['sourceConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backfillAll != null) 'backfillAll': backfillAll!,
        if (backfillNone != null) 'backfillNone': backfillNone!,
        if (createTime != null) 'createTime': createTime!,
        if (customerManagedEncryptionKey != null)
          'customerManagedEncryptionKey': customerManagedEncryptionKey!,
        if (destinationConfig != null) 'destinationConfig': destinationConfig!,
        if (displayName != null) 'displayName': displayName!,
        if (errors != null) 'errors': errors!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (sourceConfig != null) 'sourceConfig': sourceConfig!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A specific stream object (e.g a specific DB table).
class StreamObject {
  /// The latest backfill job that was initiated for the stream object.
  BackfillJob? backfillJob;

  /// The creation time of the object.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name.
  ///
  /// Required.
  core.String? displayName;

  /// Active errors on the object.
  ///
  /// Output only.
  core.List<Error>? errors;

  /// The object resource's name.
  ///
  /// Output only.
  core.String? name;

  /// The object identifier in the data source.
  SourceObjectIdentifier? sourceObject;

  /// The last update time of the object.
  ///
  /// Output only.
  core.String? updateTime;

  StreamObject({
    this.backfillJob,
    this.createTime,
    this.displayName,
    this.errors,
    this.name,
    this.sourceObject,
    this.updateTime,
  });

  StreamObject.fromJson(core.Map _json)
      : this(
          backfillJob: _json.containsKey('backfillJob')
              ? BackfillJob.fromJson(
                  _json['backfillJob'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sourceObject: _json.containsKey('sourceObject')
              ? SourceObjectIdentifier.fromJson(
                  _json['sourceObject'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backfillJob != null) 'backfillJob': backfillJob!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (errors != null) 'errors': errors!,
        if (name != null) 'name': name!,
        if (sourceObject != null) 'sourceObject': sourceObject!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The VPC Peering configuration is used to create VPC peering between
/// Datastream and the consumer's VPC.
class VpcPeeringConfig {
  /// A free subnet for peering.
  ///
  /// (CIDR of /29) TODO(b/172995841) add validators.
  ///
  /// Required.
  core.String? subnet;

  /// Fully qualified name of the VPC that Datastream will peer to.
  ///
  /// Format: `projects/{project}/global/{networks}/{name}`
  ///
  /// Required.
  core.String? vpc;

  VpcPeeringConfig({
    this.subnet,
    this.vpc,
  });

  VpcPeeringConfig.fromJson(core.Map _json)
      : this(
          subnet: _json.containsKey('subnet')
              ? _json['subnet'] as core.String
              : null,
          vpc: _json.containsKey('vpc') ? _json['vpc'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subnet != null) 'subnet': subnet!,
        if (vpc != null) 'vpc': vpc!,
      };
}
