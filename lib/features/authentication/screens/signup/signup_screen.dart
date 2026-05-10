import 'package:flutter/material.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ISizes.defaultSpace),
          child: Column(
            children: [
              /// Signup Title
              Text(
                ITexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: ISizes.spaceBtwSections),

              /// Form
              Form(
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
                        labelText: ITexts.username,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: ISizes.spaceBtwInputFields),

                    /// Phone Number
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: ITexts.username,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: ISizes.spaceBtwInputFields),

                    /// Password
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: ITexts.username,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: ISizes.spaceBtwSections),

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
                        const SizedBox(width: ISizes.spaceBtwItems),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: ITexts.iAgreeTo),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
