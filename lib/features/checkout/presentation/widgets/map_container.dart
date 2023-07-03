import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nike_app/common/constants/app_styles.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';
import 'package:nike_app/env/env.dart';
import 'package:nike_app/features/checkout/presentation/providers/new_location_state_provider.dart';

class MapContainerPreview extends ConsumerStatefulWidget {
  const MapContainerPreview(
      {super.key, required this.lat, required this.lng, required this.path});
  final double lat;
  final double lng;
  final String path;

  @override
  ConsumerState<MapContainerPreview> createState() =>
      _MapContainerPreviewState();
}

class _MapContainerPreviewState extends ConsumerState<MapContainerPreview> {
  @override
  Widget build(BuildContext context) {
    var newLocationAddress = ref.watch(newLocationPointsProvider);
    final url =
        'https://maps.googleapis.com/maps/api/staticmap?center=${newLocationAddress?.latitude ?? widget.lat},${newLocationAddress?.longitude ?? widget.lng}&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C${newLocationAddress?.latitude ?? widget.lat},${newLocationAddress?.longitude ?? widget.lng}&key=${Env.apiKey}';
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      width: double.infinity,
      curve: Curves.easeInOut,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
        ),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(url),
            onError: (error, stackTrace) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content:
                      ReusableText(text: 'Unable to Preview Map', fSize: 16),
                  backgroundColor: AppStyles.errorColor,
                ),
              );
            }),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReusableText(
            text: 'View Map',
            fSize: 20,
            color: Theme.of(context).colorScheme.secondary,
            fWeight: FontWeight.w700,
            fFamily: GoogleFonts.raleway().fontFamily,
          ),
          GestureDetector(
            onTap: () async {
              final LatLng? newPoints = await context.push(widget.path);
              setState(() {
                if (newPoints != null) {
                  // print(newPoints);
                  ref.read(newLocationPointsProvider.notifier).state =
                      newPoints;
                }
              });
            },
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppStyles.blueLightShade,
                borderRadius: BorderRadius.circular(100),
              ),
              child: SvgPicture.asset('assets/images/img_locationicon.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
