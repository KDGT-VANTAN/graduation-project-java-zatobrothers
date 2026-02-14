import 'package:reimi_app/core/services/location/geocoding_service.dart';
import 'package:reimi_app/domain/value_objects/location.dart';

class GetLocationFromAddressUseCase {
  const GetLocationFromAddressUseCase(this._service);
  final GeocodingService _service;

  Future<Location?> call(String address) async {
    return await _service.getLocationFromAddress(address);
  }
}
