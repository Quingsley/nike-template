import 'package:nike_app/services/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'location_service_provider.g.dart';

@riverpod
LocationService locationService(LocationServiceRef ref) {
  return LocationService();
}
