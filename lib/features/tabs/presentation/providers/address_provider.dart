import 'package:nike_app/services/location_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_provider.g.dart';

@riverpod
Future<String> futureAddress(FutureAddressRef ref,
    {required LocationService locationService,
    required int lat,
    required int lng}) {
  return locationService.getFormattedAddress(lat, lng);
}
