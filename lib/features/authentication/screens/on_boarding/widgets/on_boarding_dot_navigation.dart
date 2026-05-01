import 'package:flutter/material.dart';
import 'package:i_store_app/utils/constants/colors.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/device/device_utility.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: IDeviceUtils.getBottomNavigationBarHeight(),
      left: ISizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? IColors.light : IColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
