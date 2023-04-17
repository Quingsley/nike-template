import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/appbR_components.dart';
import '../widgets/appbar_title.dart';
import '../widgets/textinput_widget.dart';
import '../widgets/text_avatar_widget.dart';
import '../widgets/header_text.dart';
import '../widgets/buttons.dart';
import '../widgets/popular_shoes.dart';
import '../widgets/shoe_display.dart';
import '../widgets/new_arrivals_text.dart';
import '../widgets/shoe_card.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchShoes = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      drawer: const Drawer(
        child: DrawerNavigator(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: const AppBarTitle(text: 'Explore'),
        centerTitle: true,
        actions: const [
          AppBarComponents(
              icon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              color: Colors.white)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: TextInputWidget(
                        icon: const Icon(Icons.search),
                        text: 'Looking for shoes',
                        searchShoes: searchShoes),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15, left: 10),
                  child: TextWidgetAvatar(icon: Icon(Icons.swipe)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 17.0),
              child: TextHeader(
                text: 'Select Category',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ButtonsFormatter(
                  text: 'All Shoes',
                  color: Colors.white,
                ),
                ButtonsFormatter(
                  text: 'Outdoor',
                  color: Theme.of(context).primaryColor,
                ),
                const ButtonsFormatter(
                  text: 'Tennis',
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PopularShoes(text: 'Popular Shoes'),
                  TextButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'See all',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: ShoeDisplay(
                    image: 'shoe_4.png',
                    text1: 'BEST SELLER',
                    text2: 'Nike Jordan',
                    cash: '\$${302.00}',
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: ShoeDisplay(
                    image: 'shoe_4.png',
                    text1: 'BEST SELLER',
                    text2: 'Nike Air Max',
                    cash: '\$${752.00}',
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.orange,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 17),
              child: NewsArrivalsText(text: 'New Arrivals'),
            ),
            const ShoeCard(
              text: 'Summer Sale',
              text1: '15% OFF',
              image: 'shoe_2.png',
              // image1: 'Vector(1h).png',
            )
          ],
        ),
      ),
    );
  }
}
