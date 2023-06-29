import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location/location.dart';
import 'package:nike_app/common/cmn_text.dart';
import 'package:nike_app/common/providers/location_service_provider.dart';
import 'package:nike_app/common/widgets/back_button.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:nike_app/features/checkout/presentation/widgets/contact_list_tile.dart';
import 'package:nike_app/features/checkout/presentation/widgets/map_container.dart';
import 'package:nike_app/features/checkout/presentation/widgets/row_widget.dart';
import 'package:nike_app/features/tabs/presentation/providers/address_provider.dart';
import 'package:nike_app/features/tabs/presentation/providers/tabs_provider.dart';

final showMoreStateProvider = StateProvider<bool>((ref) => false);

class CheckoutScreen extends ConsumerStatefulWidget {
  const CheckoutScreen({super.key});

  static const String route = '/checkout';

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  LocationData? address;
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      var location = ref.watch(locationServiceProvider);
      var lcData = await ref
          .watch(tabViewModelProvider(locationService: location))
          .getUsersLocation();
      if (lcData != null) {
        address = lcData;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var location = ref.watch(locationServiceProvider);
    var isShowMoreProvider = ref.watch(showMoreStateProvider);
    var addressAsyncValue = ref.watch(futureAddressProvider(
        lat: address?.latitude?.toInt() ?? 0,
        lng: address?.longitude?.toInt() ?? 0,
        locationService: location));
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7F9),
      appBar: AppBar(
        leadingWidth: 60,
        leading: KBackButton(
          margin: 10,
          onpress: () => context.go('/cart'),
        ),
        title: Text(
          'Checkout',
          style: GoogleFonts.raleway(
            fontSize: 16,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 10,
          right: 10,
        ),
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(
              16,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(
              fSize: 14,
              text: 'Contact information',
              textAlign: TextAlign.left,
              fWeight: FontWeight.w500,
              color: const Color(0XFF1A2530),
              fFamily: GoogleFonts.raleway().fontFamily,
              fStyle: FontStyle.normal,
            ),
            const ContactListTile(
              title: 'jeromejuma25@gmail.com',
              subtTitle: 'Email',
              leadingImgPath: 'assets/images/img_mail_1.svg',
            ),
            const ContactListTile(
              title: '+254 742 301 435',
              subtTitle: 'Phone',
              leadingImgPath: 'assets/images/img_call.svg',
            ),
            ReusableText(
              fSize: 14,
              text: 'Address',
              textAlign: TextAlign.left,
              fWeight: FontWeight.w500,
              color: const Color(0XFF1A2530),
              fFamily: GoogleFonts.raleway().fontFamily,
              fStyle: FontStyle.normal,
            ),
            addressAsyncValue.when(
              data: (data) {
                return RowCheckoutWidget(
                  title: data,
                  icon: !isShowMoreProvider
                      ? Icons.expand_more
                      : Icons.expand_less,
                  onPress: () {
                    ref.read(showMoreStateProvider.notifier).state =
                        !ref.read(showMoreStateProvider.notifier).state;
                  },
                );
              },
              error: ((error, stackTrace) => Text(error.toString())),
              loading: () =>
                  const Text('Please Hang On Getting your address...'),
            ),
            if (isShowMoreProvider)
              MapContainerPreview(
                  lat: address!.latitude!, lng: address!.longitude!)
          ],
        ),
      ),
      floatingActionButton: CButton(
        text: 'Check Out',
        fSize: 14,
        onpressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
