import 'package:flutter/material.dart';
import 'package:i_store_app/utils/constants/colors.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/device/device_utility.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: IDeviceUtils.getBottomNavigationBarHeight() - 15,
      right: ISizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(
            side: BorderSide(color: IColors.black),
          ),
          backgroundColor: dark ? IColors.primary : IColors.black,
        ),
        onPressed: () {},
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}