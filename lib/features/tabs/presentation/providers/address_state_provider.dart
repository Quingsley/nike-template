import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';

class _Address extends StateNotifier<LocationData?> {
  _Address() : super(null) {
    state = null;
  }

  LocationData get address => state!;
  set address(LocationData data) {
    var newAddress = data;
    state = newAddress;
  }
}

final addressInfoProvider = Provider<_Address>((ref) => _Address());
