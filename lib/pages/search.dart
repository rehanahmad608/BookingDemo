import 'package:book_me/templates/cards.dart';
import 'package:book_me/templates/textfields.dart';
import 'package:flutter/material.dart';
import '../configs/screen_size_config/screen_size_config.dart';
import '../templates/dialogs.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List properties = [
      Property(
          hasTagOnImage: true,
          image: 'hotel1.jpg',
          canEarnCredit: false,
          daysLeft: 1,
          discountedPrice: '56,700',
          distanceFromOrigin: 1.6,
          isFreeCancellation: false,
          isGenius: true,
          isMobileOnly: false,
          isSustainable: false,
          name: 'Hotel Reego',
          price: '63,000',
          reviewComment: 'Fabulous',
          reviewCount: 41,
          reviews: 8.8),
      Property(
          hasTagOnImage: false,
          image: 'hotel2.jpg',
          canEarnCredit: true,
          daysLeft: 3,
          discountedPrice: '24,750',
          distanceFromOrigin: 1.6,
          isFreeCancellation: true,
          isGenius: false,
          isMobileOnly: true,
          isSustainable: true,
          name: 'Mulberry Continental Hotel Skardu',
          price: '27,500',
          reviewComment: 'Good',
          reviewCount: 6,
          reviews: 7.7),
      Property(
          hasTagOnImage: true,
          image: 'hotel1.jpg',
          canEarnCredit: false,
          daysLeft: 1,
          discountedPrice: '56,700',
          distanceFromOrigin: 1.6,
          isFreeCancellation: false,
          isGenius: true,
          isMobileOnly: false,
          isSustainable: false,
          name: 'Hotel Reego',
          price: '63,000',
          reviewComment: 'Fabulous',
          reviewCount: 41,
          reviews: 8.8),
      Property(
          hasTagOnImage: false,
          image: 'hotel2.jpg',
          canEarnCredit: true,
          daysLeft: 3,
          discountedPrice: '24,750',
          distanceFromOrigin: 1.6,
          isFreeCancellation: true,
          isGenius: false,
          isMobileOnly: true,
          isSustainable: true,
          name: 'Mulberry Continental Hotel Skardu',
          price: '27,500',
          reviewComment: 'Good',
          reviewCount: 6,
          reviews: 7.7),
      Property(
          hasTagOnImage: true,
          image: 'hotel1.jpg',
          canEarnCredit: false,
          daysLeft: 1,
          discountedPrice: '56,700',
          distanceFromOrigin: 1.6,
          isFreeCancellation: false,
          isGenius: true,
          isMobileOnly: false,
          isSustainable: false,
          name: 'Hotel Reego',
          price: '63,000',
          reviewComment: 'Fabulous',
          reviewCount: 41,
          reviews: 8.8),
      Property(
          hasTagOnImage: false,
          image: 'hotel2.jpg',
          canEarnCredit: true,
          daysLeft: 3,
          discountedPrice: '24,750',
          distanceFromOrigin: 1.6,
          isFreeCancellation: true,
          isGenius: false,
          isMobileOnly: true,
          isSustainable: true,
          name: 'Mulberry Continental Hotel Skardu',
          price: '27,500',
          reviewComment: 'Good',
          reviewCount: 6,
          reviews: 7.7),
      Property(
          hasTagOnImage: true,
          image: 'hotel1.jpg',
          canEarnCredit: false,
          daysLeft: 1,
          discountedPrice: '56,700',
          distanceFromOrigin: 1.6,
          isFreeCancellation: false,
          isGenius: true,
          isMobileOnly: false,
          isSustainable: false,
          name: 'Hotel Reego',
          price: '63,000',
          reviewComment: 'Fabulous',
          reviewCount: 41,
          reviews: 8.8),
      Property(
          hasTagOnImage: false,
          image: 'hotel2.jpg',
          canEarnCredit: true,
          daysLeft: 3,
          discountedPrice: '24,750',
          distanceFromOrigin: 1.6,
          isFreeCancellation: true,
          isGenius: false,
          isMobileOnly: true,
          isSustainable: true,
          name: 'Mulberry Continental Hotel Skardu',
          price: '27,500',
          reviewComment: 'Good',
          reviewCount: 6,
          reviews: 7.7),
    ];

    Widget displayBottomBarIcon(
            {required IconData icon, required String text}) =>
        Row(
          children: [
            Icon(
              icon,
              color: Colors.grey.shade800,
            ),
            const SizedBox(width: 4),
            Text(
              text,
              style: ScreenConfig.theme.textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        );

    Stack displayAppbar() => Stack(
          children: [
            Column(
              children: [
                Container(
                  width: ScreenConfig.screenSizeWidth,
                  height: ScreenConfig.screenSizeHeight * 0.11,
                  color: ScreenConfig.theme.colorScheme.primary,
                ),
                Container(
                  width: ScreenConfig.screenSizeWidth,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(0, 2),
                        blurRadius: 2.0,
                      )
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        displayBottomBarIcon(
                            icon: Icons.sort_outlined, text: 'Sort'),
                        displayBottomBarIcon(
                            icon: Icons.filter_alt_outlined, text: 'Filter'),
                        displayBottomBarIcon(
                            icon: Icons.map_outlined, text: 'Map'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenConfig.screenSizeHeight * 0.05,
                horizontal: 24.0,
              ),
              child: TextFields.decoratedTextFieldWithBackground(
                hintText: 'Skardu . 15 May - 20 May',
                iconData: Icons.arrow_back,
                controller: TextEditingController(),
              ),
            )
          ],
        );

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          displayAppbar(),
          SizedBox(height: ScreenConfig.screenSizeHeight * 0.01),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8.0),
            child: Text(
              '51 properties',
              style: ScreenConfig.theme.textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: ScreenConfig.screenSizeHeight * 0.8,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          AladeenDialogs.showLoginDialog(context);
                        },
                        child: Cards.propertyCard(property: properties[index]));
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                  itemCount: properties.length),
            ),
          ),
        ],
      ),
    );
  }
}

class Property {
  String image;
  String name;
  bool isGenius;
  double reviews;
  String reviewComment;
  int reviewCount;
  double distanceFromOrigin;
  String price;
  String discountedPrice;
  bool isSustainable;
  bool isMobileOnly;
  bool isFreeCancellation;
  int daysLeft;
  bool canEarnCredit;
  bool hasTagOnImage;

  Property(
      {required this.image,
      required this.canEarnCredit,
      required this.daysLeft,
      required this.discountedPrice,
      required this.distanceFromOrigin,
      required this.isFreeCancellation,
      required this.isGenius,
      required this.isMobileOnly,
      required this.isSustainable,
      required this.name,
      required this.price,
      required this.reviewComment,
      required this.reviewCount,
      required this.reviews,
      required this.hasTagOnImage});
}
