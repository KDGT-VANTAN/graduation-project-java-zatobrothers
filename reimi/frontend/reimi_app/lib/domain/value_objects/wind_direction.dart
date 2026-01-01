import 'package:json_annotation/json_annotation.dart';

enum WindDirection {
  @JsonValue('NORTH')
  north,
  @JsonValue('NORTH_EAST')
  northEast,
  @JsonValue('EAST')
  east,
  @JsonValue('SOUTH_EAST')
  southEast,
  @JsonValue('SOUTH')
  south,
  @JsonValue('SOUTH_WEST')
  southWest,
  @JsonValue('WEST')
  west,
  @JsonValue('NORTH_WEST')
  northWest,
  @JsonValue('UNKNOWN')
  unknown,
}
