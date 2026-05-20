import 'package:flutter/material.dart';
import 'package:i_store_app/utils/constants/colors.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class ISignupForm extends StatelessWidget {
  const ISignupForm({
    Key? key,
    required this.dark,
  }) : super(key: key);

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ITexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ISizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ITexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ISizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ITexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ITexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ITexts.phoneNum,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ITexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwSections - 12),

          /// Terms & Conditions Checkbox
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: ISizes.spaceBtwItems - 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${ITexts.iAgreeTo} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 12),
                    ),
                    TextSpan(
                      text: '${ITexts.privacyPolicy} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 12)
                          .apply(
                            color: dark
                                ? IColors.white
                                : IColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? IColors.white
                                : IColors.primary,
                          ),
                    ),
                    TextSpan(
                      text: '${ITexts.and} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 12),
                    ),
                    TextSpan(
                      text: ITexts.termsOfUse,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 12)
                          .apply(
                            color: dark
                                ? IColors.white
                                : IColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? IColors.white
                                : IColors.primary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: ISizes.spaceBtwSections - 12),

          /// SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(ITexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
