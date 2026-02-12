import 'package:reimi_app/core/services/location/geolocator_service.dart';
import 'package:reimi_app/domain/value_objects/location.dart';

class GetCurrentLocationUseCase {
  GetCurrentLocationUseCase(this._service);
  final GeolocatorService _service;

  Future<Location> call() async {
    final position = await _service.getCurrentPosition();

    return Location(
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }
}
