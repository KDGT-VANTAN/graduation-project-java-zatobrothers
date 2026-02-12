import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/services/location/geocoding_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'geocoding_provider.g.dart';

@riverpod
GeocodingService geocodingService(Ref ref) {
  return const GeocodingService();
}
