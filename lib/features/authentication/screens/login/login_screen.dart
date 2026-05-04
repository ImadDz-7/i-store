import 'package:flutter/material.dart';
import 'package:i_store_app/common/styles/spacing_styles.dart';
import 'package:i_store_app/utils/constants/colors.dart';
import 'package:i_store_app/utils/constants/image_strings.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:i_store_app/utils/helpers/helper_functions.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(
                      dark ? IImages.lightAppLogo : IImages.darkAppLogo,
                    ),
                    height: 85,
                  ),
                  Text(
                    ITexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: ISizes.sm),
                  Text(
                    ITexts.loginSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
