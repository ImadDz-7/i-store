import 'package:flutter/material.dart';
import 'package:i_store_app/utils/constants/image_strings.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Page
          PageView(
            children: [
              Padding(
                padding: const EdgeInsets.all(ISizes.defaultSpace),
                child: Column(
                  children: [
                    Image(
                      width: IHelperFunctions.screenWidth() * 0.8,
                      height: IHelperFunctions.screenHeight() * 0.59,
                      image: const AssetImage(IImages.onBoardingImage1),
                    ),
                    Text(
                      ITexts.onBoardingTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: ISizes.spaceBtwItems),
                    Text(
                      ITexts.onBoardingSubTitle1,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),

          /// Skip Button

          /// Dot Navigation Smooth Page Indicator

          /// Circular Button
        ],
      ),
    );
  }
}
