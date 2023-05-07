import 'package:book_me/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../configs/screen_size_config/screen_size_config.dart';
import '../templates/dialogs.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);

    AppBar displayAppbar() => AppBar(
          title: const Text('Booking.com'),
          centerTitle: false,
          leading: const Icon(Icons.close),
        );
    Padding displayHeading({required String title}) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Text(
            title,
            style: ScreenConfig.theme.textTheme.headline3
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        );
    Padding displayDescription(
            {required String title, bool isCentered = false}) =>
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          child: Text(
            title,
            textAlign: isCentered ? TextAlign.center : null,
            style: ScreenConfig.theme.textTheme.bodyText1
                ?.copyWith(fontWeight: FontWeight.normal, height: 1.3),
          ),
        );

    Widget displayButton({required String title, required String animation}) =>
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Container(
              width: ScreenConfig.screenSizeWidth,
              height: ScreenConfig.screenSizeHeight * 0.06,
              // padding:
              //     const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: LottieBuilder.asset(
                      'assets/$animation',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    title,
                    style: ScreenConfig.theme.textTheme.bodyText1
                        ?.copyWith(fontWeight: FontWeight.w500, height: 1.3),
                  ),
                ],
              ),
            ),
          ),
        );

    return Scaffold(
      appBar: displayAppbar(),
      body: SizedBox(
        height: ScreenConfig.screenSizeHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.02),
            displayHeading(title: 'Sign in or create an account'),
            displayDescription(
                title:
                    'Choose any of the options below to sign in or start creating an account.'),
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.02),
            displayButton(
                title: 'Continue with Google', animation: 'google_icon.json'),
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.004),
            displayButton(
                title: 'Continue with Facebook', animation: 'facebook.json'),
            const Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: ScreenConfig.theme.textTheme.bodyText1?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          'By signing in or creating an account, you agree with our ',
                    ),
                    TextSpan(
                      text: 'Terms & conditions ',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: ScreenConfig.theme.colorScheme.primary,
                      ),
                    ),
                    const TextSpan(text: 'and '),
                    TextSpan(
                      text: 'Privacy statement',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: ScreenConfig.theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenConfig.screenSizeHeight * 0.02),
          ],
        ),
      ),
    );
  }
}
