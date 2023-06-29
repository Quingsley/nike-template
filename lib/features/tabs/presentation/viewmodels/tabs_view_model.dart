import 'package:location/location.dart';
import 'package:nike_app/services/location_service.dart';

class TabsViewModel {
  LocationService locationService;

  TabsViewModel(this.locationService);

  Future<LocationData?> getUsersLocation() {
    return locationService.requsetLocationInfo();
  }

  Future<String> getFormattedAddress(int lat, int lng) {
    return locationService.getFormattedAddress(lat, lng);
  }
}
