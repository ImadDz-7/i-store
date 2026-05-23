import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_store_app/common/styles/spacing_styles.dart';
import 'package:i_store_app/features/authentication/screens/login/login_screen.dart';
import 'package:i_store_app/utils/constants/image_strings.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ISpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(IImages.staticSuccessIllustration),
                width: IHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              /// Title & Subtitle
              Text(
                ITexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 23),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwItems),
              Text(
                ITexts.yourAccountCreatedSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(ITexts.IContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}