import 'package:flutter/material.dart';

import '../configs/screen_size_config/screen_size_config.dart';

class TextFields {
  static Container decoratedTextField(
          {required String hintText,
          required IconData iconData,
          bool isRoundedFromTop = false,
          required TextEditingController controller,
          bool enabled = true}) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
        child: TextField(
          enabled: enabled,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(iconData, color: Colors.black),
          ),
        ),
      );

  static Container decoratedTextFieldWithBackground(
          {required String hintText,
          required IconData iconData,
          bool isRoundedFromTop = false,
          required TextEditingController controller,
          bool enabled = true}) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: ScreenConfig.theme.colorScheme.secondary,
            width: 6,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          enabled: enabled,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(iconData, color: Colors.grey.shade700),
          ),
        ),
      );
}
