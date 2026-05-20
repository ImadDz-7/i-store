import 'package:flutter/material.dart';
import 'package:i_store_app/common/widgets/login_signup/form_divider.dart';
import 'package:i_store_app/common/widgets/login_signup/social_buttons.dart';
import 'package:i_store_app/features/authentication/screens/signup/widgets/signup_screen_form.dart';
import 'package:i_store_app/utils/constants/colors.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: ISizes.defaultSpace,
            left: ISizes.defaultSpace,
            top: 5,
          ),
          child: Column(
            children: [
              /// Signup Title
              Text(
                ITexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: ISizes.spaceBtwSections - 8),

              /// Form
              ISignupForm(dark: dark),
              const SizedBox(height: ISizes.spaceBtwSections - 17),

              /// Divider
              IFormDivider(
                dark: dark,
                dividerText: ITexts.orSignUpWith,
              ),
              const SizedBox(height: ISizes.spaceBtwSections - 20),

              /// Social Button
              const ISocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

