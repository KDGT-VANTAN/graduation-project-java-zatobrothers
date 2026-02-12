import 'package:geocoding/geocoding.dart' hide Location;
import 'package:reimi_app/domain/value_objects/location.dart';

class GeocodingService {
  const GeocodingService();

  Future<Location?> getLocationFromAddress(String address) async {
    final locations = await locationFromAddress(
      address,
    );

    if (locations.isEmpty) return null;

    final loc = locations.first;

    return Location(
      latitude: loc.latitude,
      longitude: loc.longitude,
    );
  }

  Future<Placemark?> getPlacemark(Location location) async {
    final placemarks = await placemarkFromCoordinates(
      location.latitude,
      location.longitude,
    );

    return placemarks.isEmpty ? null : placemarks.first;
  }
}
