import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/utils/typedefs.dart';
import 'package:locall_app/src/domain/entities/location.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel extends Location with _$LocationModel {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory LocationModel({
    required List<double> coordinates,
  }) = _LocationModel;

  factory LocationModel.fromJson(DataMap json) => _$LocationModelFromJson(json);

  factory LocationModel.empty() => LocationModel(
        coordinates: [3.69, 3.69],
      );

  factory LocationModel.fromEntity(Location location) => LocationModel(
        coordinates: location.coordinates,
      );
}
