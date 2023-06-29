import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/widgets/back_button.dart';
import 'package:nike_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:nike_app/features/cart/data/models/cart_model.dart';
import 'package:nike_app/features/cart/presentation/widgets/cart_container.dart';
import 'package:nike_app/features/cart/presentation/widgets/line_separator.dart';
import 'package:nike_app/features/cart/presentation/widgets/row_widget.dart';
import 'package:nike_app/features/checkout/presentation/pages/checkout_screen.dart';
import 'package:nike_app/features/home/data/models/shoe_category_model.dart';

CartModel _cart = CartModel(
  shoes: [
    ShoeCategoryModel(
      title: 'Nike Air Jordan',
      price: 47.8,
      brand: 'Nike Club Max',
      type: 'BEST SELLER',
      imgPath: 'assets/images/fav_shoe_1.png',
      isFavourite: true,
    ),
    ShoeCategoryModel(
      title: 'Nike Air Jordan',
      price: 37.8,
      brand: 'Nike Air Max',
      type: 'BEST SELLER',
      imgPath: 'assets/images/fav_shoe_2.png',
      isFavourite: true,
    ),
    ShoeCategoryModel(
      title: 'Nike Air Jordan',
      price: 57.6,
      brand: 'Nike Air Jordan',
      type: 'BEST SELLER',
      imgPath: 'assets/images/fav_shoe_3.png',
      isFavourite: false,
    ),
  ],
);

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const String route = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7F9),
      appBar: AppBar(
        leadingWidth: 60,
        leading: KBackButton(
          margin: 10,
          onpress: () => context.go('/home/shoe-detail'),
        ),
        title: Text(
          'My Cart',
          style: GoogleFonts.raleway(
            fontSize: 16,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${_cart.shoes.length} items',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                  itemCount: _cart.shoes.length,
                  itemBuilder: (context, index) {
                    return CartCardContainer(
                      index: index,
                      shoeType: _cart.shoes[index],
                    );
                  }),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const RowWidget(
                        leftText: 'Subtotal', rightText: '\$143.20'),
                    const SizedBox(height: 5),
                    const RowWidget(leftText: 'Delivery', rightText: '\$60.29'),
                    const SizedBox(
                      height: 20,
                    ),
                    const LineSeparator(),
                    const SizedBox(height: 20),
                    RowWidget(
                      leftText: 'Total Cost',
                      rightText: '\$203.49',
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CButton(
        text: 'Check Out',
        fSize: 14,
        onpressed: () {
          context.go(CheckoutScreen.route);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
