import 'package:book_me/pages/search.dart';
import 'package:book_me/templates/dialogs.dart';
import 'package:flutter/material.dart';

import '../configs/screen_size_config/screen_size_config.dart';

class Cards {
  static Widget cardFilledWithRichText(
          {required String heading, required List<InlineSpan>? description}) =>
      Container(
        width: ScreenConfig.screenSizeWidth * 0.6,
        height: ScreenConfig.screenSizeHeight * 0.2,
        decoration: BoxDecoration(
            color: ScreenConfig.theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: ScreenConfig.theme.textTheme.headline4?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  style: ScreenConfig.theme.textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                  children: description,
                ),
              )
            ],
          ),
        ),
      );

  static Widget cardWithBorder(
          {required String heading, required String description}) =>
      Container(
        width: ScreenConfig.screenSizeWidth * 0.6,
        height: ScreenConfig.screenSizeHeight * 0.2,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: ScreenConfig.theme.colorScheme.primary)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    heading,
                    style: ScreenConfig.theme.textTheme.headline4
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: ScreenConfig.theme.colorScheme.primary,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.percent_rounded,
                        color: ScreenConfig.theme.colorScheme.primary,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: ScreenConfig.theme.textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      );
  static Widget cardLocked(
          {required String heading, required String description}) =>
      Container(
        width: ScreenConfig.screenSizeWidth * 0.6,
        height: ScreenConfig.screenSizeHeight * 0.2,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    heading,
                    style: ScreenConfig.theme.textTheme.headline4
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.lock_outline,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: ScreenConfig.theme.textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      );

  static Widget cardWithImageAndText(
          {required String title,
          required String description,
          required String image}) =>
      Container(
        width: ScreenConfig.screenSizeWidth * 0.45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                spreadRadius: 4.0,
                color: Colors.grey.shade200,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
              child: Image.asset(
                image,
                height: ScreenConfig.screenSizeHeight * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: ScreenConfig.theme.textTheme.headline4
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, bottom: 8.0, right: 8.0),
              child: Text(
                description,
                style: ScreenConfig.theme.textTheme.bodyText1
                    ?.copyWith(fontWeight: FontWeight.normal, height: 1.3),
              ),
            ),
          ],
        ),
      );

  static Widget cardWithImage(
          {required String title,
          required String description,
          required String image}) =>
      Container(
        width: ScreenConfig.screenSizeWidth * 0.45,
        height: ScreenConfig.screenSizeHeight * 0.35,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 4.0,
              color: Colors.grey.shade200,
            )
          ],
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: ScreenConfig.screenSizeWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.6),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
                stops: const [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: ScreenConfig.theme.textTheme.headline3?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      );

  static Widget propertyCard({required Property property}) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                spreadRadius: 4.0,
                color: Colors.grey.shade200,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: property.canEarnCredit
                      ? ScreenConfig.screenSizeHeight * 0.48
                      : ScreenConfig.screenSizeHeight * 0.32,
                  child: Image.asset(
                    'assets/${property.image}',
                    width: ScreenConfig.screenSizeWidth * 0.35,
                    fit: BoxFit.cover,
                  ),
                ),
                property.hasTagOnImage
                    ? Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          width: ScreenConfig.screenSizeWidth * 0.35,
                          color: Colors.green.shade800,
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Breakfast included',
                            style: ScreenConfig.theme.textTheme.bodyText2
                                ?.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: ScreenConfig.screenSizeWidth * 0.55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          property.name,
                          style:
                              ScreenConfig.theme.textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.grey.shade500,
                        size: 22,
                      )
                    ],
                  ),
                  property.isGenius
                      ? const SizedBox(height: 6)
                      : const SizedBox(),
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: ScreenConfig.theme.colorScheme.secondary,
                      ),
                      property.isGenius
                          ? const SizedBox(width: 6)
                          : const SizedBox(),
                      property.isGenius
                          ? Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: ScreenConfig.theme.colorScheme.primary,
                              ),
                              child: Text(
                                'Genius',
                                style: ScreenConfig.theme.textTheme.headline6
                                    ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                            bottomRight: Radius.circular(4.0),
                          ),
                          color: ScreenConfig.theme.colorScheme.primary,
                        ),
                        child: Text(
                          '${property.reviews}',
                          style:
                              ScreenConfig.theme.textTheme.headline6?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '${property.reviewComment} . ',
                        style: ScreenConfig.theme.textTheme.bodyText1,
                      ),
                      Text(
                        '${property.reviewCount} reviews',
                        style: ScreenConfig.theme.textTheme.bodyText1
                            ?.copyWith(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '${property.distanceFromOrigin} miles from centre',
                        style: ScreenConfig.theme.textTheme.bodyText2
                            ?.copyWith(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  property.isSustainable
                      ? Row(
                          children: [
                            const Icon(
                              Icons.eco_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              'Travel Sustainable',
                              style: ScreenConfig.theme.textTheme.bodyText2
                                  ?.copyWith(color: Colors.grey.shade700),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  property.isMobileOnly
                      ? const SizedBox(height: 6)
                      : const SizedBox(),
                  property.isMobileOnly
                      ? Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.green.shade800,
                          ),
                          child: Text(
                            'Mobile-only price',
                            style: ScreenConfig.theme.textTheme.bodyText2
                                ?.copyWith(color: Colors.white),
                          ),
                        )
                      : const SizedBox(),
                  const SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hotel room: 1 bed',
                        style: ScreenConfig.theme.textTheme.bodyText1
                            ?.copyWith(color: Colors.grey.shade600),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Price for 5 nights, 2 adults',
                        style: ScreenConfig.theme.textTheme.bodyText1,
                      ),
                      const SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'PKR ${property.price} ',
                            style: ScreenConfig.theme.textTheme.bodyText1
                                ?.copyWith(
                              color: Colors.red.shade700,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            'PKR ${property.discountedPrice}',
                            style: ScreenConfig.theme.textTheme.headline5,
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Includes taxes and charges',
                        style: ScreenConfig.theme.textTheme.bodyText2
                            ?.copyWith(color: Colors.grey.shade600),
                      ),
                      const SizedBox(height: 6),
                      property.canEarnCredit
                          ? Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Colors.green.shade800,
                              ),
                              child: Text(
                                'Earn PKR 1,733 Credits',
                                style: ScreenConfig.theme.textTheme.bodyText2
                                    ?.copyWith(color: Colors.white),
                              ),
                            )
                          : const SizedBox(),
                      property.canEarnCredit
                          ? const SizedBox(height: 6)
                          : const SizedBox(),
                      Text(
                        'Only ${property.daysLeft} left at this price at booking.com',
                        style: ScreenConfig.theme.textTheme.bodyText2?.copyWith(
                          color: Colors.red.shade700,
                        ),
                      ),
                      property.isFreeCancellation
                          ? const SizedBox(height: 6)
                          : const SizedBox(),
                      property.isFreeCancellation
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.green.shade700,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Free cancellation',
                                  style: ScreenConfig.theme.textTheme.bodyText1
                                      ?.copyWith(
                                          color: Colors.green.shade700,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : const SizedBox(),
                      const SizedBox(height: 6),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
