import 'package:flutter/material.dart';
import 'package:i_store_app/features/authentication/screens/on_boarding/widgets/on_boarding_dot_navigation.dart';
import 'package:i_store_app/features/authentication/screens/on_boarding/widgets/on_boarding_page.dart';
import 'package:i_store_app/features/authentication/screens/on_boarding/widgets/on_boarding_skip_button.dart';
import 'package:i_store_app/utils/constants/colors.dart';
import 'package:i_store_app/utils/constants/image_strings.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:i_store_app/utils/device/device_utility.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Page
          PageView(
            children: const [
              OnBoardingPage(
                image: IImages.onBoardingImage1,
                title: ITexts.onBoardingTitle1,
                subTitle: ITexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: IImages.onBoardingImage2,
                title: ITexts.onBoardingTitle2,
                subTitle: ITexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: IImages.onBoardingImage3,
                title: ITexts.onBoardingTitle3,
                subTitle: ITexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkipButton(),

          /// Dot Navigation Smooth Page Indicator
          const OnBoardingDotNavigation(),

          /// Circular Button
        ],
      ),
    );
  }
}


