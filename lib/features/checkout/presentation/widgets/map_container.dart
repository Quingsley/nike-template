import 'package:flutter/material.dart';
import 'package:nike_app/env/env.dart';

class MapContainerPreview extends StatelessWidget {
  const MapContainerPreview({super.key, required this.lat, required this.lng});
  final double lat;
  final double lng;

  @override
  Widget build(BuildContext context) {
    final url =
        'https://maps.googleapis.com/maps/api/staticmap?center=$lat,$lng&zoom=16&size=600x300&maptype=roadmapmarkers=color:red%7Clabel:C%7C$lat,$lng&key=${Env.apiKey}';
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      width: double.infinity,
      curve: Curves.easeInOut,
      transform: Matrix4.identity()..translate(.2 - .4), //FIXME
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: const Border(),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(url),
        ),
      ),
    );
  }
}
