import 'package:flutter/material.dart';

import '../configs/screen_size_config/screen_size_config.dart';

class Badges {
  static Widget selectionBadge(
          {bool isSelected = false,
          required String title,
          required IconData iconData}) =>
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(isSelected ? 0.2 : 0.0),
          border:
              Border.all(color: isSelected ? Colors.white : Colors.transparent),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(iconData),
            Text(
              ' $title',
              style: ScreenConfig.theme.textTheme.bodyLarge
                  ?.copyWith(color: Colors.white),
            )
          ],
        ),
      );
}
