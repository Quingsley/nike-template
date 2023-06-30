import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/cmn_text.dart';
import 'package:nike_app/common/providers/location_service_provider.dart';
import 'package:nike_app/common/widgets/back_button.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:nike_app/features/cart/presentation/widgets/line_separator.dart';
import 'package:nike_app/features/cart/presentation/widgets/row_widget.dart';
import 'package:nike_app/features/checkout/presentation/providers/new_location_state_provider.dart';
import 'package:nike_app/features/checkout/presentation/widgets/contact_list_tile.dart';
import 'package:nike_app/features/checkout/presentation/widgets/map_container.dart';
import 'package:nike_app/features/checkout/presentation/widgets/row_widget.dart';
import 'package:nike_app/features/checkout/presentation/widgets/success_popup.dart';
import 'package:nike_app/features/tabs/presentation/providers/address_provider.dart';
import 'package:nike_app/features/tabs/presentation/providers/address_state_provider.dart';

final showMoreStateProvider = StateProvider<bool>((ref) => false);
final paymentShowMoreStateProvider = StateProvider<bool>((ref) => false);

class CheckoutScreen extends ConsumerStatefulWidget {
  const CheckoutScreen({required this.mapPath, super.key});
  final String mapPath;
  static const String route = '/checkout';

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    var location = ref.watch(locationServiceProvider);
    var newLocationAddress = ref.watch(newLocationPointsProvider);
    var isShowMoreProvider = ref.watch(showMoreStateProvider);
    var isPaymentCardShown = ref.watch(paymentShowMoreStateProvider);
    var address = ref.watch(addressInfoProvider);
    var addressAsyncValue = ref.watch(futureAddressProvider(
        lat: newLocationAddress?.latitude.toInt() ??
            address.address.latitude!.toInt(),
        lng: newLocationAddress?.longitude.toInt() ??
            address.address.longitude!.toInt(),
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
              error: ((error, stackTrace) => Text(
                    error.toString(),
                    style: TextStyle(
                      overflow: TextOverflow.fade,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  )),
              loading: () => Text(
                'Please hang on us we get your address...',
                style: TextStyle(color: Colors.green[400]),
              ),
            ),
            if (isShowMoreProvider)
              MapContainerPreview(
                lat: address.address.latitude!.toDouble(),
                lng: address.address.longitude!.toDouble(),
                path: widget.mapPath,
              ),
            const SizedBox(
              height: 5,
            ),
            ReusableText(
              fSize: 14,
              text: 'Payments',
              textAlign: TextAlign.left,
              fWeight: FontWeight.w500,
              color: const Color(0XFF1A2530),
              fFamily: GoogleFonts.raleway().fontFamily,
              fStyle: FontStyle.normal,
            ),
            RowCheckoutWidget(
                title: 'Card Information',
                icon:
                    !isPaymentCardShown ? Icons.expand_more : Icons.expand_less,
                onPress: () {
                  ref.read(paymentShowMoreStateProvider.notifier).state =
                      !ref.read(paymentShowMoreStateProvider.notifier).state;
                }),
            if (isPaymentCardShown) const Text('TO BE IMPLEMENTED LATER'),
            const SizedBox(
              height: 10,
            ),
            const RowWidget(leftText: 'Subtotal', rightText: '\$143.20'),
            const SizedBox(height: 5),
            const RowWidget(leftText: 'Delivery', rightText: '\$60.29'),
            const LineSeparator(),
            const SizedBox(height: 20),
            RowWidget(
              leftText: 'Total Cost',
              rightText: '\$203.49',
              color: Theme.of(context).colorScheme.primary,
            )
          ],
        ),
      ),
      floatingActionButton: CButton(
        text: 'Check Out',
        fSize: 14,
        onpressed: () {
          showDialog(
              context: context,
              barrierColor: Colors.grey[100]?.withOpacity(.7),
              builder: (context) {
                return const Dialog(
                  child: SuccessPopup(),
                );
              });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
