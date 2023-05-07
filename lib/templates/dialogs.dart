import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../configs/screen_size_config/screen_size_config.dart';

class AladeenDialogs {
  static void showLoginDialog(BuildContext context,
          {String? title, Function()? onOkayTap}) =>
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) {
            return Dialog(
              backgroundColor: Colors.white,
              elevation: 0.0,
              child: SizedBox(
                width: ScreenConfig.screenSizeWidth,
                height: ScreenConfig.screenSizeHeight * 0.4,
                child: Center(
                  child: AladeenAnimations.pleaseLogin(
                      context: context,
                      func: onOkayTap,
                      title: title ?? 'Hold on! it is just a demo 😃'),
                ),
              ),
            );
          });
}

class AladeenAnimations {
  static Widget pleaseLogin(
          {String? title,
          Color? titleColor,
          required BuildContext context,
          Function()? func}) =>
      Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.cancel_outlined,
                  size: 20,
                  color: ScreenConfig.theme.primaryColor,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              LottieBuilder.asset(
                'assets/Lock (Colorful).json',
                height: ScreenConfig.screenSizeHeight * 0.3,
                fit: BoxFit.contain,
              ),
              Text(
                title ?? 'Hold on! it is just a demo 😃',
                style: ScreenConfig.theme.textTheme.headline6
                    ?.copyWith(color: titleColor),
              ),
              SizedBox(
                height: ScreenConfig.screenSizeHeight * 0.015,
              ),
              Buttons.getButton(
                  func: func ??
                      () {
                        Navigator.pop(context);
                      },
                  text: 'Okay',
                  height: 30,
                  width: ScreenConfig.screenSizeWidth * 0.4),
              SizedBox(
                height: ScreenConfig.screenSizeHeight * 0.02,
              ),
            ],
          ),
        ],
      );
}

class Buttons {
  static Widget getButton(
          {required Function() func,
          double? width,
          double? height,
          String? image,
          Color? color,
          String? text,
          TextStyle? textStyle}) =>
      GestureDetector(
        onTap: func,
        child: Container(
          width: width ?? ScreenConfig.screenSizeWidth,
          height: height ?? 47,
          decoration: BoxDecoration(
              color: color ?? ScreenConfig.theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(5.0)),
          child: Center(
            child: image != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Icons/$image',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 13.7,
                      ),
                      Text(
                        text ?? 'DONE',
                        style: textStyle ??
                            ScreenConfig.theme.textTheme.button
                                ?.copyWith(color: Colors.white),
                      )
                    ],
                  )
                : Text(
                    text ?? 'DONE',
                    style: textStyle ??
                        ScreenConfig.theme.textTheme.button
                            ?.copyWith(color: Colors.white),
                  ),
          ),
        ),
      );
}
