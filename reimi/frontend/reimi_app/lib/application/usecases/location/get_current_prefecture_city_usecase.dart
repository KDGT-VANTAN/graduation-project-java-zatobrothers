import 'package:reimi_app/core/services/location/geocoding_service.dart';
import 'package:reimi_app/domain/value_objects/location.dart';
import 'package:reimi_app/domain/value_objects/prefecture_city.dart';

class GetCurrentPrefectureCityUseCase {
  const GetCurrentPrefectureCityUseCase(this._service);
  final GeocodingService _service;

  Future<PrefectureCity?> call(Location location) async {
    final placemark = await _service.getPlacemark(location);
    if (placemark == null) return null;

    return PrefectureCity(
      prefecture: placemark.administrativeArea ?? '',
      city: placemark.locality ?? '',
    );
  }
}
