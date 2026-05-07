import 'package:flutter/material.dart';
import 'package:i_store_app/common/styles/spacing_styles.dart';
import 'package:i_store_app/common/widgets/login_signup/form_divider.dart';
import 'package:i_store_app/common/widgets/login_signup/social_buttons.dart';
import 'package:i_store_app/features/authentication/screens/login/widgets/login_screen_form.dart';
import 'package:i_store_app/features/authentication/screens/login/widgets/login_screen_header.dart';
import 'package:i_store_app/utils/constants/colors.dart';
import 'package:i_store_app/utils/constants/image_strings.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = IHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ISpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              ILoginHeader(dark: dark),
              const SizedBox(height: ISizes.spaceBtwItems),

              /// Form
              const ILoginForm(),

              /// Divider
              IFormDivider(
                dark: dark,
                dividerText: ITexts.orSignInWith,
              ),
              const SizedBox(height: ISizes.spaceBtwSections - 10),

              /// Footer
              const ISocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
