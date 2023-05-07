import 'package:book_me/configs/screen_size_config/screen_size_config.dart';
import 'package:book_me/pages/search.dart';
import 'package:book_me/templates/badges.dart';
import 'package:book_me/templates/cards.dart';
import 'package:book_me/templates/dialogs.dart';
import 'package:book_me/templates/textfields.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final categories = <Category>[
    Category(iconData: Icons.bed_outlined, isSelected: true, title: 'Stays'),
    Category(
      iconData: Icons.car_rental_outlined,
      isSelected: false,
      title: 'Car rental',
    ),
    Category(
      iconData: Icons.local_taxi_outlined,
      isSelected: false,
      title: 'Taxi',
    ),
    Category(
      iconData: Icons.attractions_outlined,
      isSelected: false,
      title: 'Attractions',
    ),
    Category(
      iconData: Icons.airplanemode_on_outlined,
      isSelected: false,
      title: 'Flights',
    ),
    Category(
      iconData: Icons.airport_shuttle_outlined,
      isSelected: false,
      title: 'Airport taxis',
    ),
  ];

  final cards = <CardData>[
    CardData(
      title: 'Genius',
      isCardFilledWithRichText: true,
      isCardWithBorder: false,
      isLocked: false,
      description: '',
      descriptionList: const [
        TextSpan(
          text: 'Ahmad you are at ',
        ),
        TextSpan(
          text: 'Genius Level 1 ',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        TextSpan(text: 'in our loyalty programme'),
      ],
    ),
    CardData(
      title: '10% discounts',
      isCardFilledWithRichText: false,
      isCardWithBorder: true,
      isLocked: false,
      description: 'Enjoy discount at participating properties worldwide',
      descriptionList: const [],
    ),
    CardData(
      title: '15% discounts',
      isCardFilledWithRichText: false,
      isCardWithBorder: false,
      isLocked: true,
      description: 'Complete 5 stays to unlock Genius Level 2',
      descriptionList: const [],
    ),
    CardData(
      title: 'Free breakfasts',
      isCardFilledWithRichText: false,
      isCardWithBorder: false,
      isLocked: true,
      description: 'Complete 5 stays to unlock Genius Level 2',
      descriptionList: const [],
    ),
    CardData(
      title: 'Free room upgrades',
      isCardFilledWithRichText: false,
      isCardWithBorder: false,
      isLocked: true,
      description: 'Complete 5 stays to unlock Genius Level 2',
      descriptionList: const [],
    ),
  ];

  final dateRangeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppBar displayAppbar() => AppBar(
          title: const Text('Booking.com'),
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {
                AladeenDialogs.showLoginDialog(context);
              },
              child: const Icon(Icons.chat_bubble_outline),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                AladeenDialogs.showLoginDialog(context);
              },
              child: const Icon(Icons.notifications_active_outlined),
            ),
            const SizedBox(width: 10),
          ],
          bottom: PreferredSize(
            preferredSize: const Size(0, 40),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: SizedBox(
                width: ScreenConfig.screenSizeWidth,
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10.0);
                  },
                  itemBuilder: (context, index) => Row(
                    children: [
                      SizedBox(width: index == 0 ? 10 : 0),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var element in categories) {
                              element.isSelected = false;
                            }
                            categories[index].isSelected = true;
                          });
                        },
                        child: Badges.selectionBadge(
                          title: categories[index].title,
                          iconData: categories[index].iconData,
                          isSelected: categories[index].isSelected,
                        ),
                      ),
                      SizedBox(width: index == categories.length - 1 ? 10 : 0)
                    ],
                  ),
                  itemCount: categories.length,
                ),
              ),
            ),
          ),
        );

    Container displaySearchArea() => Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: ScreenConfig.theme.colorScheme.secondary,
              width: 4,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children: [
              TextFields.decoratedTextField(
                hintText: 'Enter your destination',
                controller: TextEditingController(),
                iconData: Icons.search_outlined,
                isRoundedFromTop: true,
              ),
              Divider(
                color: ScreenConfig.theme.colorScheme.secondary,
                height: 0.0,
                thickness: 4.0,
              ),
              GestureDetector(
                onTap: () async {
                  DateTimeRange? dateRange = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(5000),
                    currentDate: DateTime.now(),
                  );
                  setState(() {
                    dateRangeController.text =
                        '${DateFormat('EEE, MMM dd').format(dateRange!.start)} - ${DateFormat('EEE, MMM dd').format(dateRange.end)}';
                  });
                },
                child: TextFields.decoratedTextField(
                  controller: dateRangeController,
                  hintText: 'Select your date',
                  enabled: false,
                  iconData: Icons.calendar_today_outlined,
                  isRoundedFromTop: false,
                ),
              ),
              Divider(
                color: ScreenConfig.theme.colorScheme.secondary,
                height: 0.0,
                thickness: 4.0,
              ),
              TextFields.decoratedTextField(
                controller: TextEditingController(),
                hintText: '1 room . 2 adults. 0 children',
                iconData: Icons.person_2_outlined,
                isRoundedFromTop: false,
              ),
              Divider(
                color: ScreenConfig.theme.colorScheme.secondary,
                height: 0.0,
                thickness: 4.0,
              ),
              GestureDetector(
                onTap: () {
                  // AladeenDialogs.showLoginDialog(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SearchPage()));
                },
                child: Container(
                  width: ScreenConfig.screenSizeWidth,
                  height: 40,
                  decoration: BoxDecoration(
                    color: ScreenConfig.theme.colorScheme.tertiary,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(6.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Search',
                      style: ScreenConfig.theme.textTheme.bodyLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        );

    Padding displayHeading({required String title}) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Text(
            title,
            style: ScreenConfig.theme.textTheme.headline3
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        );

    Column displayColumnWithOffers() => Column(
          children: [
            GestureDetector(
              onTap: () {
                AladeenDialogs.showLoginDialog(context);
              },
              child: Cards.cardWithImageAndText(
                title: 'Extended stays',
                description: 'Live your life anywhere with 30+ night stays',
                image: 'assets/worker.png',
              ),
            ),
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.02),
            GestureDetector(
              onTap: () {
                AladeenDialogs.showLoginDialog(context);
              },
              child: Cards.cardWithImageAndText(
                title: 'Save 15% on stays worldwide',
                description:
                    'Discover dream destinations for less with Getaway Deals',
                image: 'assets/beach.jpeg',
              ),
            ),
          ],
        );

    Column displayColumnWithTips() => Column(
          children: [
            GestureDetector(
              onTap: () {
                AladeenDialogs.showLoginDialog(context);
              },
              child: Cards.cardWithImage(
                title: 'Quick Trips',
                description: 'Live your life anywhere with 30+ night stays',
                image: 'assets/quick.jpg',
              ),
            ),
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.02),
            GestureDetector(
              onTap: () {
                AladeenDialogs.showLoginDialog(context);
              },
              child: Cards.cardWithImage(
                title: 'Travel articles',
                description:
                    'Discover dream destinations for less with Getaway Deals',
                image: 'assets/travel.jpg',
              ),
            ),
          ],
        );

    BottomNavigationBar displayBottomNavBar() => BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Saved',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 17.0,
                child: Text(
                  'A',
                  style: ScreenConfig.theme.textTheme.displaySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
              label: 'Profile',
            ),
          ],
        );
    SizedBox displayHorizontalContent() => SizedBox(
          width: ScreenConfig.screenSizeWidth,
          height: ScreenConfig.screenSizeHeight * 0.24,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                AladeenDialogs.showLoginDialog(context);
              },
              child: Row(
                children: [
                  SizedBox(width: index == 0 ? 10 : 0),
                  cards[index].isCardFilledWithRichText
                      ? Cards.cardFilledWithRichText(
                          heading: cards[index].title,
                          description: cards[index].descriptionList,
                        )
                      : cards[index].isCardWithBorder
                          ? Cards.cardWithBorder(
                              heading: cards[index].title,
                              description: cards[index].description,
                            )
                          : Cards.cardLocked(
                              heading: cards[index].title,
                              description: cards[index].description,
                            ),
                  SizedBox(width: index == cards.length - 1 ? 10 : 0)
                ],
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 10.0),
            itemCount: cards.length,
          ),
        );
    return Scaffold(
      appBar: displayAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: displaySearchArea(),
            ),
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.02),
            displayHeading(title: 'Travel more, spend less'),
            displayHorizontalContent(),
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.01),
            displayHeading(title: 'More for you'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  displayColumnWithOffers(),
                  displayColumnWithTips(),
                ],
              ),
            ),
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.02),
          ],
        ),
      ),
      bottomNavigationBar: displayBottomNavBar(),
    );
  }
}

class Category {
  String title;
  IconData iconData;
  bool isSelected;

  Category(
      {required this.iconData, required this.isSelected, required this.title});
}

// enum cardType{}

class CardData {
  String title;
  bool isLocked;
  bool isCardFilledWithRichText;
  bool isCardWithBorder;
  List<InlineSpan>? descriptionList;
  String description;
  CardData({
    required this.title,
    required this.isCardFilledWithRichText,
    required this.isCardWithBorder,
    required this.isLocked,
    required this.descriptionList,
    required this.description,
  });
}
