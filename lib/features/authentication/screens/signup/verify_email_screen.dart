import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_store_app/features/authentication/screens/login/login_screen.dart';
import 'package:i_store_app/utils/constants/image_strings.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Padding to Give Default Equal Space in all Screens.
        child: Padding(
          padding: const EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(IImages.deliveredEmailIllustration),
                width: IHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              /// Title & Subtitle
              Text(
                ITexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwItems),
              Text(
                'support@contactsupport.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwItems),
              Text(
                ITexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              /// Buttons
              

            ],
          ),
        ),
      ),
    );
  }
}
