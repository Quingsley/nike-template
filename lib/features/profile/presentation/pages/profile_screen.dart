import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';
import 'package:nike_app/common/providers/image_service_provider.dart';
import 'package:nike_app/common/providers/picked_image_provider.dart';
import 'package:nike_app/common/widgets/app_bar_menu_icon.dart';
import 'package:nike_app/features/profile/presentation/widgets/account_info_list_tile.dart';
import 'package:nike_app/features/profile/presentation/widgets/phone_input_widget.dart';
import 'dart:io';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  static const String route = '/profile';

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var imageService = ref.watch(imageServiceProvider);
    var selectedImage = ref.watch(pickedImageProvider);
    // print(selectedImage?.path);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0XFFF7F7F9),
      appBar: AppBar(
        leading: const AppBarMenuIcon(),
        title: ReusableText(
          text: 'Profile',
          fSize: 16,
          fFamily: GoogleFonts.raleway().fontFamily,
          fWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                Icon(Icons.edit, color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(selectedImage?.path ??
                      'assets/images/image_not_found.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            ReusableText(
              text: 'Jerome Jumah',
              fSize: 16,
              textAlign: TextAlign.center,
              fWeight: FontWeight.w600,
              fFamily: GoogleFonts.raleway().fontFamily,
              color: Theme.of(context).colorScheme.secondary,
            ),
            TextButton(
              onPressed: () async {
                var file = await imageService.pickImage();
                if (file != null) {
                  ref.read(pickedImageProvider.notifier).state =
                      File(file.path);
                } else {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Theme.of(context).colorScheme.error,
                      content: ReusableText(
                        text: 'Unable to upload image, please try again later',
                        fSize: 20,
                        color: Theme.of(context).colorScheme.onError,
                      ),
                    ));
                  }
                }
              },
              child: ReusableText(
                text: 'Change Profile Picture',
                fSize: 12,
                color: Theme.of(context).colorScheme.primary,
                textAlign: TextAlign.center,
                fWeight: FontWeight.w600,
                fFamily: GoogleFonts.raleway().fontFamily,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: 'Full Names',
                      fSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                      textAlign: TextAlign.left,
                      fWeight: FontWeight.w600,
                      fFamily: GoogleFonts.raleway().fontFamily,
                    ),
                    const AccountDetailsTile(
                      title: 'Jerome Jumah',
                      isVerified: true,
                    ),
                    ReusableText(
                      text: 'Location',
                      fSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                      textAlign: TextAlign.start,
                      fWeight: FontWeight.w600,
                      fFamily: GoogleFonts.raleway().fontFamily,
                    ),
                    const AccountDetailsTile(
                      title: 'Kenya',
                      isVerified: true,
                    ),
                    ReusableText(
                      text: 'Mobile Number',
                      fSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                      textAlign: TextAlign.start,
                      fWeight: FontWeight.w600,
                      fFamily: GoogleFonts.raleway().fontFamily,
                    ),
                    const PhoneInputTile(isVerified: true)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
