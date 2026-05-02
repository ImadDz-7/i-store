import 'package:flutter/material.dart';
import 'package:i_store_app/features/authentication/controllers/on_boarding/on_boarding_controller.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/device/device_utility.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: IDeviceUtils.getAppBarHeight(),
      right: ISizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        child: const Text('Skip'),
      ),
    );
  }
}
