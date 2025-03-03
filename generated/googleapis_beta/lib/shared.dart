/// Shared types to minimize the package size. Do not use directly.
@core.Deprecated(
  'Avoid importing this library. '
  'Use the members defined in the target API library instead.',
)
library $shared;

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

import 'dart:convert' as convert;
import 'dart:core' as core;

/// Used by:
///
/// - alertcenter:v1beta1 : BatchDeleteAlertsRequest
/// - alertcenter:v1beta1 : BatchUndeleteAlertsRequest
class $AlertsRequest {
  /// list of alert IDs.
  ///
  /// Required.
  core.List<core.String>? alertId;

  /// The unique identifier of the Google Workspace organization account of the
  /// customer the alerts are associated with.
  ///
  /// Optional.
  core.String? customerId;

  $AlertsRequest({
    this.alertId,
    this.customerId,
  });

  $AlertsRequest.fromJson(core.Map _json)
      : this(
          alertId: _json.containsKey('alertId')
              ? (_json['alertId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          customerId: _json.containsKey('customerId')
              ? _json['customerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (customerId != null) 'customerId': customerId!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : AliasContext
/// - ondemandscanning:v1beta1 : AliasContext
class $AliasContext {
  /// The alias kind.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Unknown.
  /// - "FIXED" : Git tag.
  /// - "MOVABLE" : Git branch.
  /// - "OTHER" : Used to specify non-standard aliases. For example, if a Git
  /// repo has a ref named "refs/foo/bar".
  core.String? kind;

  /// The alias name.
  core.String? name;

  $AliasContext({
    this.kind,
    this.name,
  });

  $AliasContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : Artifact
/// - ondemandscanning:v1beta1 : Artifact
class $Artifact {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
  /// container.
  core.String? checksum;

  /// Artifact ID, if any; for container images, this will be a URL by digest
  /// like `gcr.io/projectID/imagename@sha256:123456`.
  core.String? id;

  /// Related artifact names.
  ///
  /// This may be the path to a binary or jar file, or in the case of a
  /// container build, the name used to push the container image to Google
  /// Container Registry, as presented to `docker push`. Note that a single
  /// Artifact ID can have multiple names, for example if two tags are applied
  /// to one image.
  core.List<core.String>? names;

  $Artifact({
    this.checksum,
    this.id,
    this.names,
  });

  $Artifact.fromJson(core.Map _json)
      : this(
          checksum: _json.containsKey('checksum')
              ? _json['checksum'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksum != null) 'checksum': checksum!,
        if (id != null) 'id': id!,
        if (names != null) 'names': names!,
      };
}

/// Used by:
///
/// - bigqueryconnection:v1beta1 : AuditLogConfig
/// - cloudfunctions:v2beta : AuditLogConfig
/// - domains:v1beta1 : AuditLogConfig
/// - metastore:v1beta : AuditLogConfig
/// - networkconnectivity:v1alpha1 : AuditLogConfig
/// - networksecurity:v1beta1 : GoogleIamV1AuditLogConfig
/// - policysimulator:v1beta1 : GoogleIamV1AuditLogConfig
/// - privateca:v1beta1 : AuditLogConfig
class $AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  ///
  /// Follows the same format of Binding.members.
  core.List<core.String>? exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String? logType;

  $AuditLogConfig({
    this.exemptedMembers,
    this.logType,
  });

  $AuditLogConfig.fromJson(core.Map _json)
      : this(
          exemptedMembers: _json.containsKey('exemptedMembers')
              ? (_json['exemptedMembers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logType: _json.containsKey('logType')
              ? _json['logType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exemptedMembers != null) 'exemptedMembers': exemptedMembers!,
        if (logType != null) 'logType': logType!,
      };
}

/// Used by:
///
/// - privateca:v1beta1 : DisableCertificateAuthorityRequest
/// - privateca:v1beta1 : EnableCertificateAuthorityRequest
/// - privateca:v1beta1 : RestoreCertificateAuthorityRequest
class $CertificateAuthorityRequest {
  /// An ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  $CertificateAuthorityRequest({
    this.requestId,
  });

  $CertificateAuthorityRequest.fromJson(core.Map _json)
      : this(
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : Command
/// - ondemandscanning:v1beta1 : Command
class $Command {
  /// Command-line arguments used when executing this command.
  core.List<core.String>? args;

  /// Working directory (relative to project source root) used when running this
  /// command.
  core.String? dir;

  /// Environment variables set before running this command.
  core.List<core.String>? env;

  /// Optional unique identifier for this command, used in wait_for to reference
  /// this command as a dependency.
  core.String? id;

  /// Name of the command, as presented on the command line, or if the command
  /// is packaged as a Docker container, as presented to `docker pull`.
  ///
  /// Required.
  core.String? name;

  /// The ID(s) of the command(s) that this command depends on.
  core.List<core.String>? waitFor;

  $Command({
    this.args,
    this.dir,
    this.env,
    this.id,
    this.name,
    this.waitFor,
  });

  $Command.fromJson(core.Map _json)
      : this(
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dir: _json.containsKey('dir') ? _json['dir'] as core.String : null,
          env: _json.containsKey('env')
              ? (_json['env'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          waitFor: _json.containsKey('waitFor')
              ? (_json['waitFor'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (dir != null) 'dir': dir!,
        if (env != null) 'env': env!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (waitFor != null) 'waitFor': waitFor!,
      };
}

/// Used by:
///
/// - ondemandscanning:v1beta1 : Completeness
/// - ondemandscanning:v1beta1 : SlsaCompleteness
class $Completeness {
  /// If true, the builder claims that recipe.arguments is complete, meaning
  /// that all external inputs are properly captured in the recipe.
  core.bool? arguments;

  /// If true, the builder claims that recipe.environment is claimed to be
  /// complete.
  core.bool? environment;

  /// If true, the builder claims that materials are complete, usually through
  /// some controls to prevent network access.
  ///
  /// Sometimes called "hermetic".
  core.bool? materials;

  $Completeness({
    this.arguments,
    this.environment,
    this.materials,
  });

  $Completeness.fromJson(core.Map _json)
      : this(
          arguments: _json.containsKey('arguments')
              ? _json['arguments'] as core.bool
              : null,
          environment: _json.containsKey('environment')
              ? _json['environment'] as core.bool
              : null,
          materials: _json.containsKey('materials')
              ? _json['materials'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arguments != null) 'arguments': arguments!,
        if (environment != null) 'environment': environment!,
        if (materials != null) 'materials': materials!,
      };
}

/// Used by:
///
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1BoundingPolyConfig
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1PolylineConfig
class $Config {
  /// Annotation spec set resource name.
  ///
  /// Required.
  core.String? annotationSpecSet;

  /// Instruction message showed on contributors UI.
  ///
  /// Optional.
  core.String? instructionMessage;

  $Config({
    this.annotationSpecSet,
    this.instructionMessage,
  });

  $Config.fromJson(core.Map _json)
      : this(
          annotationSpecSet: _json.containsKey('annotationSpecSet')
              ? _json['annotationSpecSet'] as core.String
              : null,
          instructionMessage: _json.containsKey('instructionMessage')
              ? _json['instructionMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotationSpecSet != null) 'annotationSpecSet': annotationSpecSet!,
        if (instructionMessage != null)
          'instructionMessage': instructionMessage!,
      };
}

/// Used by:
///
/// - adexchangebuyer2:v2beta1 : Date
/// - documentai:v1beta3 : GoogleTypeDate
/// - fcmdata:v1beta1 : GoogleTypeDate
/// - osconfig:v1alpha : Date
/// - policysimulator:v1beta1 : GoogleTypeDate
class $Date {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  $Date({
    this.day,
    this.month,
    this.year,
  });

  $Date.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Used by:
///
/// - adexchangebuyer2:v2beta1 : CancelNegotiationRequest
/// - adexchangebuyer2:v2beta1 : CompleteSetupRequest
/// - adexchangebuyer2:v2beta1 : Empty
/// - adexchangebuyer2:v2beta1 : ResumeProposalRequest
/// - adexchangebuyer2:v2beta1 : StopWatchingCreativeRequest
/// - alertcenter:v1beta1 : Empty
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
/// - analyticsadmin:v1alpha : GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
/// - analyticsadmin:v1alpha : GoogleProtobufEmpty
/// - area120tables:v1alpha1 : Empty
/// - bigqueryconnection:v1beta1 : Empty
/// - clouderrorreporting:v1beta1 : DeleteEventsResponse
/// - clouderrorreporting:v1beta1 : ReportErrorEventResponse
/// - cloudfunctions:v2beta : GenerateDownloadUrlRequest
/// - cloudfunctions:v2beta : GenerateUploadUrlRequest
/// - cloudsupport:v2beta : CloseCaseRequest
/// - containeranalysis:v1beta1 : Empty
/// - datacatalog:v1beta1 : Empty
/// - dataflow:v1b3 : DeleteSnapshotResponse
/// - dataflow:v1b3 : ResourceUtilizationReportResponse
/// - dataflow:v1b3 : SendDebugCaptureResponse
/// - dataflow:v1b3 : WorkerShutdownNoticeResponse
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata
/// - datalabeling:v1beta1 : GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest
/// - datalabeling:v1beta1 : GoogleProtobufEmpty
/// - datastream:v1alpha1 : AvroFileFormat
/// - datastream:v1alpha1 : BackfillNoneStrategy
/// - datastream:v1alpha1 : CancelOperationRequest
/// - datastream:v1alpha1 : Empty
/// - datastream:v1alpha1 : FetchErrorsRequest
/// - datastream:v1alpha1 : NoConnectivitySettings
/// - datastream:v1alpha1 : StaticServiceIpConnectivity
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3DisableProcessorRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3EnableProcessorRequest
/// - documentai:v1beta3 : GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest
/// - documentai:v1beta3 : GoogleProtobufEmpty
/// - domains:v1beta1 : ExportRegistrationRequest
/// - domains:v1beta1 : ResetAuthorizationCodeRequest
/// - factchecktools:v1alpha1 : GoogleProtobufEmpty
/// - firebase:v1beta1 : Empty
/// - firebaseappcheck:v1beta : GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
/// - firebaseappcheck:v1beta : GoogleProtobufEmpty
/// - firebasedatabase:v1beta : DisableDatabaseInstanceRequest
/// - firebasedatabase:v1beta : ReenableDatabaseInstanceRequest
/// - firebasestorage:v1beta : AddFirebaseRequest
/// - firebasestorage:v1beta : Empty
/// - firebasestorage:v1beta : RemoveFirebaseRequest
/// - gkehub:v2alpha : CancelOperationRequest
/// - gkehub:v2alpha : Empty
/// - gkehub:v2alpha : FeatureSpec
/// - lifesciences:v2beta : CancelOperationRequest
/// - lifesciences:v2beta : Empty
/// - metastore:v1beta : Empty
/// - metastore:v1beta : RemoveIamPolicyRequest
/// - networkconnectivity:v1alpha1 : Empty
/// - networkconnectivity:v1alpha1 : GoogleLongrunningCancelOperationRequest
/// - networksecurity:v1beta1 : CancelOperationRequest
/// - networksecurity:v1beta1 : Empty
/// - ondemandscanning:v1beta1 : Empty
/// - osconfig:v1alpha : CancelOperationRequest
/// - osconfig:v1alpha : Empty
/// - privateca:v1beta1 : CancelOperationRequest
/// - privateca:v1beta1 : Empty
/// - prod_tt_sasportal:v1alpha1 : SasPortalEmpty
/// - prod_tt_sasportal:v1alpha1 : SasPortalGenerateSecretRequest
/// - prod_tt_sasportal:v1alpha1 : SasPortalValidateInstallerResponse
/// - recommendationengine:v1beta1 : GoogleProtobufEmpty
/// - sasportal:v1alpha1 : SasPortalEmpty
/// - sasportal:v1alpha1 : SasPortalGenerateSecretRequest
/// - sasportal:v1alpha1 : SasPortalValidateInstallerResponse
/// - toolresults:v1beta3 : AndroidTestLoop
/// - toolresults:v1beta3 : IosRoboTest
/// - toolresults:v1beta3 : MatrixDimensionDefinition
/// - toolresults:v1beta3 : StepSummary
/// - tpu:v2alpha1 : Empty
/// - tpu:v2alpha1 : GenerateServiceIdentityRequest
/// - tpu:v2alpha1 : StartNodeRequest
/// - tpu:v2alpha1 : StopNodeRequest
class $Empty {
  $Empty();

  $Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Used by:
///
/// - toolresults:v1beta3 : EnvironmentDimensionValueEntry
/// - toolresults:v1beta3 : StepDimensionValueEntry
/// - toolresults:v1beta3 : StepLabelsEntry
class $Entry {
  core.String? key;
  core.String? value;

  $Entry({
    this.key,
    this.value,
  });

  $Entry.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Used by:
///
/// - bigqueryconnection:v1beta1 : Expr
/// - cloudfunctions:v2beta : Expr
/// - containeranalysis:v1beta1 : Expr
/// - datacatalog:v1beta1 : Expr
/// - domains:v1beta1 : Expr
/// - metastore:v1beta : Expr
/// - networkconnectivity:v1alpha1 : Expr
/// - networksecurity:v1beta1 : Expr
/// - policysimulator:v1beta1 : GoogleTypeExpr
/// - privateca:v1beta1 : Expr
class $Expr {
  /// Description of the expression.
  ///
  /// This is a longer text which describes the expression, e.g. when hovered
  /// over it in a UI.
  ///
  /// Optional.
  core.String? description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String? expression;

  /// String indicating the location of the expression for error reporting, e.g.
  /// a file name and a position in the file.
  ///
  /// Optional.
  core.String? location;

  /// Title for the expression, i.e. a short string describing its purpose.
  ///
  /// This can be used e.g. in UIs which allow to enter the expression.
  ///
  /// Optional.
  core.String? title;

  $Expr({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  $Expr.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (expression != null) 'expression': expression!,
        if (location != null) 'location': location!,
        if (title != null) 'title': title!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : Fingerprint
/// - ondemandscanning:v1beta1 : Fingerprint
class $Fingerprint {
  /// The layer ID of the final layer in the Docker image's v1 representation.
  ///
  /// Required.
  core.String? v1Name;

  /// The ordered list of v2 blobs that represent a given image.
  ///
  /// Required.
  core.List<core.String>? v2Blob;

  /// The name of the image's v2 blobs computed via: \[bottom\] := v2_blobbottom
  /// := sha256(v2_blob\[N\] + " " + v2_name\[N+1\]) Only the name of the final
  /// blob is kept.
  ///
  /// Output only.
  core.String? v2Name;

  $Fingerprint({
    this.v1Name,
    this.v2Blob,
    this.v2Name,
  });

  $Fingerprint.fromJson(core.Map _json)
      : this(
          v1Name: _json.containsKey('v1Name')
              ? _json['v1Name'] as core.String
              : null,
          v2Blob: _json.containsKey('v2Blob')
              ? (_json['v2Blob'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          v2Name: _json.containsKey('v2Name')
              ? _json['v2Name'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (v1Name != null) 'v1Name': v1Name!,
        if (v2Blob != null) 'v2Blob': v2Blob!,
        if (v2Name != null) 'v2Name': v2Name!,
      };
}

/// Used by:
///
/// - bigqueryconnection:v1beta1 : GetPolicyOptions
/// - containeranalysis:v1beta1 : GetPolicyOptions
/// - datacatalog:v1beta1 : GetPolicyOptions
class $GetPolicyOptions {
  /// The maximum policy version that will be used to format the policy.
  ///
  /// Valid values are 0, 1, and 3. Requests specifying an invalid value will be
  /// rejected. Requests for policies with any conditional role bindings must
  /// specify version 3. Policies with no conditional role bindings may specify
  /// any valid value or leave the field unset. The policy in the response might
  /// use the policy version that you specified, or it might use a lower policy
  /// version. For example, if you specify version 3, but the policy has no
  /// conditional role bindings, the response uses version 1. To learn which
  /// resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// Optional.
  core.int? requestedPolicyVersion;

  $GetPolicyOptions({
    this.requestedPolicyVersion,
  });

  $GetPolicyOptions.fromJson(core.Map _json)
      : this(
          requestedPolicyVersion: _json.containsKey('requestedPolicyVersion')
              ? _json['requestedPolicyVersion'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestedPolicyVersion != null)
          'requestedPolicyVersion': requestedPolicyVersion!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : GitSourceContext
/// - ondemandscanning:v1beta1 : GitSourceContext
class $GitSourceContext {
  /// Git commit hash.
  core.String? revisionId;

  /// Git repository URL.
  core.String? url;

  $GitSourceContext({
    this.revisionId,
    this.url,
  });

  $GitSourceContext.fromJson(core.Map _json)
      : this(
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revisionId != null) 'revisionId': revisionId!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - cloudfunctions:v2beta : Location
/// - datastream:v1alpha1 : Location
/// - documentai:v1beta3 : GoogleCloudLocationLocation
/// - domains:v1beta1 : Location
/// - gkehub:v2alpha : Location
/// - lifesciences:v2beta : Location
/// - networkconnectivity:v1alpha1 : Location
/// - networksecurity:v1beta1 : Location
/// - privateca:v1beta1 : Location
/// - tpu:v2alpha1 : Location
class $Location {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String? name;

  $Location({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  $Location.fromJson(core.Map _json)
      : this(
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
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - adexchangebuyer2:v2beta1 : Money
/// - documentai:v1beta3 : GoogleTypeMoney
/// - domains:v1beta1 : Money
class $Money {
  /// The three-letter currency code defined in ISO 4217.
  core.String? currencyCode;

  /// Number of nano (10^-9) units of the amount.
  ///
  /// The value must be between -999,999,999 and +999,999,999 inclusive. If
  /// `units` is positive, `nanos` must be positive or zero. If `units` is zero,
  /// `nanos` can be positive, zero, or negative. If `units` is negative,
  /// `nanos` must be negative or zero. For example $-1.75 is represented as
  /// `units`=-1 and `nanos`=-750,000,000.
  core.int? nanos;

  /// The whole units of the amount.
  ///
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String? units;

  $Money({
    this.currencyCode,
    this.nanos,
    this.units,
  });

  $Money.fromJson(core.Map _json)
      : this(
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          units:
              _json.containsKey('units') ? _json['units'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (nanos != null) 'nanos': nanos!,
        if (units != null) 'units': units!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : ProjectRepoId
/// - ondemandscanning:v1beta1 : ProjectRepoId
class $ProjectRepoId {
  /// The ID of the project.
  core.String? projectId;

  /// The name of the repo.
  ///
  /// Leave empty for the default repo.
  core.String? repoName;

  $ProjectRepoId({
    this.projectId,
    this.repoName,
  });

  $ProjectRepoId.fromJson(core.Map _json)
      : this(
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          repoName: _json.containsKey('repoName')
              ? _json['repoName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (repoName != null) 'repoName': repoName!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : RelatedUrl
/// - ondemandscanning:v1beta1 : RelatedUrl
class $RelatedUrl {
  /// Label to describe usage of the URL.
  core.String? label;

  /// Specific URL associated with the resource.
  core.String? url;

  $RelatedUrl({
    this.label,
    this.url,
  });

  $RelatedUrl.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (url != null) 'url': url!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalAssignment
/// - sasportal:v1alpha1 : SasPortalAssignment
class $SasPortalAssignment {
  /// The identities the role is assigned to.
  ///
  /// It can have the following values: * `{user_email}`: An email address that
  /// represents a specific Google account. For example: `alice@gmail.com`. *
  /// `{group_email}`: An email address that represents a Google group. For
  /// example, `viewers@gmail.com`.
  core.List<core.String>? members;

  /// Role that is assigned to `members`.
  ///
  /// Required.
  core.String? role;

  $SasPortalAssignment({
    this.members,
    this.role,
  });

  $SasPortalAssignment.fromJson(core.Map _json)
      : this(
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalCreateSignedDeviceRequest
/// - sasportal:v1alpha1 : SasPortalCreateSignedDeviceRequest
class $SasPortalCreateSignedDeviceRequest {
  /// JSON Web Token signed using a CPI private key.
  ///
  /// Payload must be the JSON encoding of the device. The user_id field must be
  /// set.
  ///
  /// Required.
  core.String? encodedDevice;
  core.List<core.int> get encodedDeviceAsBytes =>
      convert.base64.decode(encodedDevice!);

  set encodedDeviceAsBytes(core.List<core.int> _bytes) {
    encodedDevice =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Unique installer id (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  $SasPortalCreateSignedDeviceRequest({
    this.encodedDevice,
    this.installerId,
  });

  $SasPortalCreateSignedDeviceRequest.fromJson(core.Map _json)
      : this(
          encodedDevice: _json.containsKey('encodedDevice')
              ? _json['encodedDevice'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedDevice != null) 'encodedDevice': encodedDevice!,
        if (installerId != null) 'installerId': installerId!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalCustomer
/// - sasportal:v1alpha1 : SasPortalCustomer
class $SasPortalCustomer {
  /// Name of the organization that the customer entity represents.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of the customer.
  ///
  /// Output only.
  core.String? name;

  /// User IDs used by the devices belonging to this customer.
  core.List<core.String>? sasUserIds;

  $SasPortalCustomer({
    this.displayName,
    this.name,
    this.sasUserIds,
  });

  $SasPortalCustomer.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalDeployment
/// - sasportal:v1alpha1 : SasPortalDeployment
class $SasPortalDeployment {
  /// The deployment's display name.
  core.String? displayName;

  /// The FRNs copied from its direct parent.
  ///
  /// Output only.
  core.List<core.String>? frns;

  /// Resource name.
  ///
  /// Output only.
  core.String? name;

  /// User ID used by the devices belonging to this deployment.
  ///
  /// Each deployment should be associated with one unique user ID.
  core.List<core.String>? sasUserIds;

  $SasPortalDeployment({
    this.displayName,
    this.frns,
    this.name,
    this.sasUserIds,
  });

  $SasPortalDeployment.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          frns: _json.containsKey('frns')
              ? (_json['frns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (frns != null) 'frns': frns!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalDeviceAirInterface
/// - sasportal:v1alpha1 : SasPortalDeviceAirInterface
class $SasPortalDeviceAirInterface {
  /// Conditional.
  ///
  /// This field specifies the radio access technology that is used for the
  /// CBSD.
  /// Possible string values are:
  /// - "RADIO_TECHNOLOGY_UNSPECIFIED"
  /// - "E_UTRA"
  /// - "CAMBIUM_NETWORKS"
  /// - "FOUR_G_BBW_SAA_1"
  /// - "NR"
  /// - "DOODLE_CBRS"
  /// - "CW"
  /// - "REDLINE"
  /// - "TARANA_WIRELESS"
  core.String? radioTechnology;

  /// This field is related to the `radioTechnology` and provides the air
  /// interface specification that the CBSD is compliant with at the time of
  /// registration.
  ///
  /// Optional.
  core.String? supportedSpec;

  $SasPortalDeviceAirInterface({
    this.radioTechnology,
    this.supportedSpec,
  });

  $SasPortalDeviceAirInterface.fromJson(core.Map _json)
      : this(
          radioTechnology: _json.containsKey('radioTechnology')
              ? _json['radioTechnology'] as core.String
              : null,
          supportedSpec: _json.containsKey('supportedSpec')
              ? _json['supportedSpec'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (radioTechnology != null) 'radioTechnology': radioTechnology!,
        if (supportedSpec != null) 'supportedSpec': supportedSpec!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalDeviceModel
/// - sasportal:v1alpha1 : SasPortalDeviceModel
class $SasPortalDeviceModel {
  /// The firmware version of the device.
  core.String? firmwareVersion;

  /// The hardware version of the device.
  core.String? hardwareVersion;

  /// The name of the device model.
  core.String? name;

  /// The software version of the device.
  core.String? softwareVersion;

  /// The name of the device vendor.
  core.String? vendor;

  $SasPortalDeviceModel({
    this.firmwareVersion,
    this.hardwareVersion,
    this.name,
    this.softwareVersion,
    this.vendor,
  });

  $SasPortalDeviceModel.fromJson(core.Map _json)
      : this(
          firmwareVersion: _json.containsKey('firmwareVersion')
              ? _json['firmwareVersion'] as core.String
              : null,
          hardwareVersion: _json.containsKey('hardwareVersion')
              ? _json['hardwareVersion'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          softwareVersion: _json.containsKey('softwareVersion')
              ? _json['softwareVersion'] as core.String
              : null,
          vendor: _json.containsKey('vendor')
              ? _json['vendor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firmwareVersion != null) 'firmwareVersion': firmwareVersion!,
        if (hardwareVersion != null) 'hardwareVersion': hardwareVersion!,
        if (name != null) 'name': name!,
        if (softwareVersion != null) 'softwareVersion': softwareVersion!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalFrequencyRange
/// - sasportal:v1alpha1 : SasPortalFrequencyRange
class $SasPortalFrequencyRange {
  /// The highest frequency of the frequency range in MHz.
  core.double? highFrequencyMhz;

  /// The lowest frequency of the frequency range in MHz.
  core.double? lowFrequencyMhz;

  $SasPortalFrequencyRange({
    this.highFrequencyMhz,
    this.lowFrequencyMhz,
  });

  $SasPortalFrequencyRange.fromJson(core.Map _json)
      : this(
          highFrequencyMhz: _json.containsKey('highFrequencyMhz')
              ? (_json['highFrequencyMhz'] as core.num).toDouble()
              : null,
          lowFrequencyMhz: _json.containsKey('lowFrequencyMhz')
              ? (_json['lowFrequencyMhz'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highFrequencyMhz != null) 'highFrequencyMhz': highFrequencyMhz!,
        if (lowFrequencyMhz != null) 'lowFrequencyMhz': lowFrequencyMhz!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalGenerateSecretResponse
/// - sasportal:v1alpha1 : SasPortalGenerateSecretResponse
class $SasPortalGenerateSecretResponse {
  /// The secret generated by the string and used by ValidateInstaller.
  core.String? secret;

  $SasPortalGenerateSecretResponse({
    this.secret,
  });

  $SasPortalGenerateSecretResponse.fromJson(core.Map _json)
      : this(
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secret != null) 'secret': secret!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalGetPolicyRequest
/// - sasportal:v1alpha1 : SasPortalGetPolicyRequest
class $SasPortalGetPolicyRequest {
  /// The resource for which the policy is being requested.
  ///
  /// Required.
  core.String? resource;

  $SasPortalGetPolicyRequest({
    this.resource,
  });

  $SasPortalGetPolicyRequest.fromJson(core.Map _json)
      : this(
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalInstallationParams
/// - sasportal:v1alpha1 : SasPortalInstallationParams
class $SasPortalInstallationParams {
  /// Boresight direction of the horizontal plane of the antenna in degrees with
  /// respect to true north.
  ///
  /// The value of this parameter is an integer with a value between 0 and 359
  /// inclusive. A value of 0 degrees means true north; a value of 90 degrees
  /// means east. This parameter is optional for Category A devices and
  /// conditional for Category B devices.
  core.int? antennaAzimuth;

  /// 3-dB antenna beamwidth of the antenna in the horizontal-plane in degrees.
  ///
  /// This parameter is an unsigned integer having a value between 0 and 360
  /// (degrees) inclusive; it is optional for Category A devices and conditional
  /// for Category B devices.
  core.int? antennaBeamwidth;

  /// Antenna downtilt in degrees and is an integer with a value between -90 and
  /// +90 inclusive; a negative value means the antenna is tilted up (above
  /// horizontal).
  ///
  /// This parameter is optional for Category A devices and conditional for
  /// Category B devices.
  core.int? antennaDowntilt;

  /// Peak antenna gain in dBi.
  ///
  /// This parameter is an integer with a value between -127 and +128 (dBi)
  /// inclusive.
  core.int? antennaGain;

  /// If an external antenna is used, the antenna model is optionally provided
  /// in this field.
  ///
  /// The string has a maximum length of 128 octets.
  core.String? antennaModel;

  /// If present, this parameter specifies whether the CBSD is a CPE-CBSD or
  /// not.
  core.bool? cpeCbsdIndication;

  /// This parameter is the maximum device EIRP in units of dBm/10MHz and is an
  /// integer with a value between -127 and +47 (dBm/10 MHz) inclusive.
  ///
  /// If not included, SAS interprets it as maximum allowable EIRP in units of
  /// dBm/10MHz for device category.
  core.int? eirpCapability;

  /// Device antenna height in meters.
  ///
  /// When the `heightType` parameter value is "AGL", the antenna height should
  /// be given relative to ground level. When the `heightType` parameter value
  /// is "AMSL", it is given with respect to WGS84 datum.
  core.double? height;

  /// Specifies how the height is measured.
  /// Possible string values are:
  /// - "HEIGHT_TYPE_UNSPECIFIED" : Unspecified height type.
  /// - "HEIGHT_TYPE_AGL" : AGL height is measured relative to the ground level.
  /// - "HEIGHT_TYPE_AMSL" : AMSL height is measured relative to the mean sea
  /// level.
  core.String? heightType;

  /// A positive number in meters to indicate accuracy of the device antenna
  /// horizontal location.
  ///
  /// This optional parameter should only be present if its value is less than
  /// the FCC requirement of 50 meters.
  core.double? horizontalAccuracy;

  /// Whether the device antenna is indoor or not.
  ///
  /// `true`: indoor. `false`: outdoor.
  core.bool? indoorDeployment;

  /// Latitude of the device antenna location in degrees relative to the WGS 84
  /// datum.
  ///
  /// The allowed range is from -90.000000 to +90.000000. Positive values
  /// represent latitudes north of the equator; negative values south of the
  /// equator.
  core.double? latitude;

  /// Longitude of the device antenna location in degrees relative to the WGS 84
  /// datum.
  ///
  /// The allowed range is from -180.000000 to +180.000000. Positive values
  /// represent longitudes east of the prime meridian; negative values west of
  /// the prime meridian.
  core.double? longitude;

  /// A positive number in meters to indicate accuracy of the device antenna
  /// vertical location.
  ///
  /// This optional parameter should only be present if its value is less than
  /// the FCC requirement of 3 meters.
  core.double? verticalAccuracy;

  $SasPortalInstallationParams({
    this.antennaAzimuth,
    this.antennaBeamwidth,
    this.antennaDowntilt,
    this.antennaGain,
    this.antennaModel,
    this.cpeCbsdIndication,
    this.eirpCapability,
    this.height,
    this.heightType,
    this.horizontalAccuracy,
    this.indoorDeployment,
    this.latitude,
    this.longitude,
    this.verticalAccuracy,
  });

  $SasPortalInstallationParams.fromJson(core.Map _json)
      : this(
          antennaAzimuth: _json.containsKey('antennaAzimuth')
              ? _json['antennaAzimuth'] as core.int
              : null,
          antennaBeamwidth: _json.containsKey('antennaBeamwidth')
              ? _json['antennaBeamwidth'] as core.int
              : null,
          antennaDowntilt: _json.containsKey('antennaDowntilt')
              ? _json['antennaDowntilt'] as core.int
              : null,
          antennaGain: _json.containsKey('antennaGain')
              ? _json['antennaGain'] as core.int
              : null,
          antennaModel: _json.containsKey('antennaModel')
              ? _json['antennaModel'] as core.String
              : null,
          cpeCbsdIndication: _json.containsKey('cpeCbsdIndication')
              ? _json['cpeCbsdIndication'] as core.bool
              : null,
          eirpCapability: _json.containsKey('eirpCapability')
              ? _json['eirpCapability'] as core.int
              : null,
          height: _json.containsKey('height')
              ? (_json['height'] as core.num).toDouble()
              : null,
          heightType: _json.containsKey('heightType')
              ? _json['heightType'] as core.String
              : null,
          horizontalAccuracy: _json.containsKey('horizontalAccuracy')
              ? (_json['horizontalAccuracy'] as core.num).toDouble()
              : null,
          indoorDeployment: _json.containsKey('indoorDeployment')
              ? _json['indoorDeployment'] as core.bool
              : null,
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
          verticalAccuracy: _json.containsKey('verticalAccuracy')
              ? (_json['verticalAccuracy'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (antennaAzimuth != null) 'antennaAzimuth': antennaAzimuth!,
        if (antennaBeamwidth != null) 'antennaBeamwidth': antennaBeamwidth!,
        if (antennaDowntilt != null) 'antennaDowntilt': antennaDowntilt!,
        if (antennaGain != null) 'antennaGain': antennaGain!,
        if (antennaModel != null) 'antennaModel': antennaModel!,
        if (cpeCbsdIndication != null) 'cpeCbsdIndication': cpeCbsdIndication!,
        if (eirpCapability != null) 'eirpCapability': eirpCapability!,
        if (height != null) 'height': height!,
        if (heightType != null) 'heightType': heightType!,
        if (horizontalAccuracy != null)
          'horizontalAccuracy': horizontalAccuracy!,
        if (indoorDeployment != null) 'indoorDeployment': indoorDeployment!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
        if (verticalAccuracy != null) 'verticalAccuracy': verticalAccuracy!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalMoveDeploymentRequest
/// - sasportal:v1alpha1 : SasPortalMoveDeploymentRequest
class $SasPortalMoveDeploymentRequest {
  /// The name of the new parent resource node or customer to reparent the
  /// deployment under.
  ///
  /// Required.
  core.String? destination;

  $SasPortalMoveDeploymentRequest({
    this.destination,
  });

  $SasPortalMoveDeploymentRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalMoveDeviceRequest
/// - sasportal:v1alpha1 : SasPortalMoveDeviceRequest
class $SasPortalMoveDeviceRequest {
  /// The name of the new parent resource node or customer to reparent the
  /// device under.
  ///
  /// Required.
  core.String? destination;

  $SasPortalMoveDeviceRequest({
    this.destination,
  });

  $SasPortalMoveDeviceRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalMoveNodeRequest
/// - sasportal:v1alpha1 : SasPortalMoveNodeRequest
class $SasPortalMoveNodeRequest {
  /// The name of the new parent resource node or customer to reparent the node
  /// under.
  ///
  /// Required.
  core.String? destination;

  $SasPortalMoveNodeRequest({
    this.destination,
  });

  $SasPortalMoveNodeRequest.fromJson(core.Map _json)
      : this(
          destination: _json.containsKey('destination')
              ? _json['destination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalNode
/// - sasportal:v1alpha1 : SasPortalNode
class $SasPortalNode {
  /// The node's display name.
  core.String? displayName;

  /// Resource name.
  ///
  /// Output only.
  core.String? name;

  /// User ids used by the devices belonging to this node.
  core.List<core.String>? sasUserIds;

  $SasPortalNode({
    this.displayName,
    this.name,
    this.sasUserIds,
  });

  $SasPortalNode.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sasUserIds: _json.containsKey('sasUserIds')
              ? (_json['sasUserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (sasUserIds != null) 'sasUserIds': sasUserIds!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalNrqzValidation
/// - sasportal:v1alpha1 : SasPortalNrqzValidation
class $SasPortalNrqzValidation {
  /// Validation case id.
  core.String? caseId;

  /// CPI who signed the validation.
  core.String? cpiId;

  /// Device latitude associated with the validation.
  core.double? latitude;

  /// Device longitude associated with the validation.
  core.double? longitude;

  $SasPortalNrqzValidation({
    this.caseId,
    this.cpiId,
    this.latitude,
    this.longitude,
  });

  $SasPortalNrqzValidation.fromJson(core.Map _json)
      : this(
          caseId: _json.containsKey('caseId')
              ? _json['caseId'] as core.String
              : null,
          cpiId:
              _json.containsKey('cpiId') ? _json['cpiId'] as core.String : null,
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseId != null) 'caseId': caseId!,
        if (cpiId != null) 'cpiId': cpiId!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalTestPermissionsRequest
/// - sasportal:v1alpha1 : SasPortalTestPermissionsRequest
class $SasPortalTestPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  core.List<core.String>? permissions;

  /// The resource for which the permissions are being requested.
  ///
  /// Required.
  core.String? resource;

  $SasPortalTestPermissionsRequest({
    this.permissions,
    this.resource,
  });

  $SasPortalTestPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
        if (resource != null) 'resource': resource!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalTestPermissionsResponse
/// - sasportal:v1alpha1 : SasPortalTestPermissionsResponse
class $SasPortalTestPermissionsResponse {
  /// A set of permissions that the caller is allowed.
  core.List<core.String>? permissions;

  $SasPortalTestPermissionsResponse({
    this.permissions,
  });

  $SasPortalTestPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalUpdateSignedDeviceRequest
/// - sasportal:v1alpha1 : SasPortalUpdateSignedDeviceRequest
class $SasPortalUpdateSignedDeviceRequest {
  /// The JSON Web Token signed using a CPI private key.
  ///
  /// Payload must be the JSON encoding of the device. The user_id field must be
  /// set.
  ///
  /// Required.
  core.String? encodedDevice;
  core.List<core.int> get encodedDeviceAsBytes =>
      convert.base64.decode(encodedDevice!);

  set encodedDeviceAsBytes(core.List<core.int> _bytes) {
    encodedDevice =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Unique installer ID (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  $SasPortalUpdateSignedDeviceRequest({
    this.encodedDevice,
    this.installerId,
  });

  $SasPortalUpdateSignedDeviceRequest.fromJson(core.Map _json)
      : this(
          encodedDevice: _json.containsKey('encodedDevice')
              ? _json['encodedDevice'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedDevice != null) 'encodedDevice': encodedDevice!,
        if (installerId != null) 'installerId': installerId!,
      };
}

/// Used by:
///
/// - prod_tt_sasportal:v1alpha1 : SasPortalValidateInstallerRequest
/// - sasportal:v1alpha1 : SasPortalValidateInstallerRequest
class $SasPortalValidateInstallerRequest {
  /// JSON Web Token signed using a CPI private key.
  ///
  /// Payload must include a "secret" claim whose value is the secret.
  ///
  /// Required.
  core.String? encodedSecret;

  /// Unique installer id (CPI ID) from the Certified Professional Installers
  /// database.
  ///
  /// Required.
  core.String? installerId;

  /// Secret returned by the GenerateSecret.
  ///
  /// Required.
  core.String? secret;

  $SasPortalValidateInstallerRequest({
    this.encodedSecret,
    this.installerId,
    this.secret,
  });

  $SasPortalValidateInstallerRequest.fromJson(core.Map _json)
      : this(
          encodedSecret: _json.containsKey('encodedSecret')
              ? _json['encodedSecret'] as core.String
              : null,
          installerId: _json.containsKey('installerId')
              ? _json['installerId'] as core.String
              : null,
          secret: _json.containsKey('secret')
              ? _json['secret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encodedSecret != null) 'encodedSecret': encodedSecret!,
        if (installerId != null) 'installerId': installerId!,
        if (secret != null) 'secret': secret!,
      };
}

/// Used by:
///
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceAPT
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceGooGet
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceYUM
/// - osconfig:v1alpha : OSPolicyResourcePackageResourceZypper
class $Shared00 {
  /// Package name.
  ///
  /// Required.
  core.String? name;

  $Shared00({
    this.name,
  });

  $Shared00.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : ByProducts
/// - containeranalysis:v1beta1 : Environment
class $Shared01 {
  core.Map<core.String, core.String>? customValues;

  $Shared01({
    this.customValues,
  });

  $Shared01.fromJson(core.Map _json)
      : this(
          customValues: _json.containsKey('customValues')
              ? (_json['customValues'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customValues != null) 'customValues': customValues!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : Deployment
/// - ondemandscanning:v1beta1 : DeploymentOccurrence
class $Shared02 {
  /// Address of the runtime element hosting this deployment.
  core.String? address;

  /// Configuration used to create this deployment.
  core.String? config;

  /// Beginning of the lifetime of this deployment.
  ///
  /// Required.
  core.String? deployTime;

  /// Platform hosting this deployment.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unknown.
  /// - "GKE" : Google Container Engine.
  /// - "FLEX" : Google App Engine: Flexible Environment.
  /// - "CUSTOM" : Custom user-defined platform.
  core.String? platform;

  /// Resource URI for the artifact being deployed taken from the deployable
  /// field with the same name.
  ///
  /// Output only.
  core.List<core.String>? resourceUri;

  /// End of the lifetime of this deployment.
  core.String? undeployTime;

  /// Identity of the user that triggered this deployment.
  core.String? userEmail;

  $Shared02({
    this.address,
    this.config,
    this.deployTime,
    this.platform,
    this.resourceUri,
    this.undeployTime,
    this.userEmail,
  });

  $Shared02.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          config: _json.containsKey('config')
              ? _json['config'] as core.String
              : null,
          deployTime: _json.containsKey('deployTime')
              ? _json['deployTime'] as core.String
              : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? (_json['resourceUri'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          undeployTime: _json.containsKey('undeployTime')
              ? _json['undeployTime'] as core.String
              : null,
          userEmail: _json.containsKey('userEmail')
              ? _json['userEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (config != null) 'config': config!,
        if (deployTime != null) 'deployTime': deployTime!,
        if (platform != null) 'platform': platform!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (undeployTime != null) 'undeployTime': undeployTime!,
        if (userEmail != null) 'userEmail': userEmail!,
      };
}

/// Used by:
///
/// - ondemandscanning:v1beta1 : BuilderConfig
/// - ondemandscanning:v1beta1 : SlsaBuilder
class $Shared03 {
  core.String? id;

  $Shared03({
    this.id,
  });

  $Shared03.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Used by:
///
/// - osconfig:v1alpha : OSPolicyAssignmentInstanceFilterInventory
/// - osconfig:v1alpha : OSPolicyInventoryFilter
class $Shared04 {
  /// The OS short name
  ///
  /// Required.
  core.String? osShortName;

  /// The OS version Prefix matches are supported if asterisk(*) is provided as
  /// the last character.
  ///
  /// For example, to match all versions with a major version of `7`, specify
  /// the following value for this field `7.*` An empty string matches all OS
  /// versions.
  core.String? osVersion;

  $Shared04({
    this.osShortName,
    this.osVersion,
  });

  $Shared04.fromJson(core.Map _json)
      : this(
          osShortName: _json.containsKey('osShortName')
              ? _json['osShortName'] as core.String
              : null,
          osVersion: _json.containsKey('osVersion')
              ? _json['osVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (osShortName != null) 'osShortName': osShortName!,
        if (osVersion != null) 'osVersion': osVersion!,
      };
}

/// Used by:
///
/// - containeranalysis:v1beta1 : Signature
/// - ondemandscanning:v1beta1 : Signature
class $Signature {
  /// The identifier for the public key that verifies this signature.
  ///
  /// * The `public_key_id` is required. * The `public_key_id` SHOULD be an
  /// RFC3986 conformant URI. * When possible, the `public_key_id` SHOULD be an
  /// immutable reference, such as a cryptographic digest. Examples of valid
  /// `public_key_id`s: OpenPGP V4 public key fingerprint: *
  /// "openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA" See
  /// https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr for more
  /// details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo (digest
  /// of the DER serialization): *
  /// "ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU" *
  /// "nih:///sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5"
  core.String? publicKeyId;

  /// The content of the signature, an opaque bytestring.
  ///
  /// The payload that this signature verifies MUST be unambiguously provided
  /// with the Signature during verification. A wrapper message might provide
  /// the payload explicitly. Alternatively, a message might have a canonical
  /// serialization that can always be unambiguously computed to derive the
  /// payload.
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> _bytes) {
    signature =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  $Signature({
    this.publicKeyId,
    this.signature,
  });

  $Signature.fromJson(core.Map _json)
      : this(
          publicKeyId: _json.containsKey('publicKeyId')
              ? _json['publicKeyId'] as core.String
              : null,
          signature: _json.containsKey('signature')
              ? _json['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publicKeyId != null) 'publicKeyId': publicKeyId!,
        if (signature != null) 'signature': signature!,
      };
}

/// Used by:
///
/// - alertcenter:v1beta1 : Status
/// - cloudfunctions:v2beta : Status
/// - containeranalysis:v1beta1 : Status
/// - dataflow:v1b3 : Status
/// - datalabeling:v1beta1 : GoogleRpcStatus
/// - datastream:v1alpha1 : Status
/// - documentai:v1beta3 : GoogleRpcStatus
/// - domains:v1beta1 : Status
/// - firebase:v1beta1 : Status
/// - gkehub:v2alpha : GoogleRpcStatus
/// - lifesciences:v2beta : Status
/// - metastore:v1beta : Status
/// - networkconnectivity:v1alpha1 : GoogleRpcStatus
/// - networksecurity:v1beta1 : Status
/// - ondemandscanning:v1beta1 : Status
/// - osconfig:v1alpha : Status
/// - policysimulator:v1beta1 : GoogleRpcStatus
/// - privateca:v1beta1 : Status
/// - prod_tt_sasportal:v1alpha1 : SasPortalStatus
/// - recommendationengine:v1beta1 : GoogleRpcStatus
/// - sasportal:v1alpha1 : SasPortalStatus
/// - toolresults:v1beta3 : Status
/// - tpu:v2alpha1 : Status
class $Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  $Status({
    this.code,
    this.details,
    this.message,
  });

  $Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// Used by:
///
/// - bigqueryconnection:v1beta1 : TestIamPermissionsRequest
/// - cloudfunctions:v2beta : TestIamPermissionsRequest
/// - containeranalysis:v1beta1 : TestIamPermissionsRequest
/// - datacatalog:v1beta1 : TestIamPermissionsRequest
/// - domains:v1beta1 : TestIamPermissionsRequest
/// - networkconnectivity:v1alpha1 : TestIamPermissionsRequest
/// - networksecurity:v1beta1 : GoogleIamV1TestIamPermissionsRequest
/// - privateca:v1beta1 : TestIamPermissionsRequest
class $TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`.
  ///
  /// Permissions with wildcards (such as '*' or 'storage.*') are not allowed.
  /// For more information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String>? permissions;

  $TestIamPermissionsRequest({
    this.permissions,
  });

  $TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Used by:
///
/// - bigqueryconnection:v1beta1 : TestIamPermissionsResponse
/// - cloudfunctions:v2beta : TestIamPermissionsResponse
/// - containeranalysis:v1beta1 : TestIamPermissionsResponse
/// - datacatalog:v1beta1 : TestIamPermissionsResponse
/// - domains:v1beta1 : TestIamPermissionsResponse
/// - networkconnectivity:v1alpha1 : TestIamPermissionsResponse
/// - networksecurity:v1beta1 : GoogleIamV1TestIamPermissionsResponse
/// - privateca:v1beta1 : TestIamPermissionsResponse
class $TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String>? permissions;

  $TestIamPermissionsResponse({
    this.permissions,
  });

  $TestIamPermissionsResponse.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}
