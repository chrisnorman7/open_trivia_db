import 'package:json_annotation/json_annotation.dart';

import 'enumerations.dart';

part 'token_response.g.dart';

/// The response of creating or resetting a token.
@JsonSerializable(fieldRename: FieldRename.snake)
class TokenResponse {
  /// Create an instance.
  const TokenResponse({
    required this.token,
    required this.responseCode,
    this.responseMessage,
  });

  /// Create an instance from a JSON map.
  factory TokenResponse.fromJson(final Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);

  /// The response code.
  final QuestionFactoryResponseCode responseCode;

  /// The message returned by the API.
  final String? responseMessage;

  /// The actual token to use.
  final String token;

  /// Convert an instance to json.
  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);
}
