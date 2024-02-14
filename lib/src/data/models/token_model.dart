import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/utils/typedefs.dart';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

@freezed
class TokenModel with _$TokenModel {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory TokenModel({
    required String token,
    required String refreshToken,
  }) = _TokenModel;

  factory TokenModel.fromJson(DataMap json) => _$TokenModelFromJson(json);

  factory TokenModel.empty() => TokenModel(
        token:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1Y2MwNzMyNzJmZWRlN'
            'zgzOWMyMjM3ZSIsImlhdCI6MTcwNzg3MDAwMiwiZXhwIjoxNzA3ODgwODAyfQ.odC1'
            'ejoQUItZSG0VQLFe5pexq25yRqWRPXCyUEo_NL8',
        refreshToken:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1Y2MwNzMyNzJmZWRlN'
            'zgzOWMyMjM3ZSIsImlhdCI6MTcwNzg3MDAwMiwiZXhwIjoxNzEwNDYyMDAyfQ.xWZD'
            'HO7mzI9ZpiPIAwn49mNvfbbJEpaq-p8DbsL2Gtw',
      );
}
