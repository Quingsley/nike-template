import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nike_app/common/widgets/back_button.dart';
import 'package:nike_app/features/tabs/presentation/providers/address_state_provider.dart';

final _pickedLocationProvider = StateProvider<LatLng?>((ref) => null);

class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  static const String route = 'map';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  @override
  Widget build(BuildContext context) {
    var initLocation = ref.watch(addressInfoProvider);
    var pickedLocation = ref.watch(_pickedLocationProvider);
    return Scaffold(
      appBar: AppBar(
        leading: KBackButton(
          onpress: () {
            context.pop();
          },
        ),
        title: const Text('Your Location'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (pickedLocation != null) {
                context.pop(pickedLocation);
              }
            },
            icon: const Icon(
              Icons.save,
              size: 26,
            ),
          ),
        ],
      ),
      body: GoogleMap(
        onTap: (position) {
          ref.read(_pickedLocationProvider.notifier).state = position;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(
            initLocation.address.latitude!,
            initLocation.address.longitude!,
          ),
          zoom: 16,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('n1'),
            position: pickedLocation ??
                LatLng(
                  initLocation.address.latitude!,
                  initLocation.address.longitude!,
                ),
          ),
        },
      ),
    );
  }
}
