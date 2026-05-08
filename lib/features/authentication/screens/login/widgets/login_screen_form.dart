import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_store_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class ILoginForm extends StatelessWidget {
  const ILoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: ITexts.email,
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: ITexts.password,
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwInputFields / 2),

          /// Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember Me
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(ITexts.rememberMe),
                ],
              ),

              /// Forget Password
              TextButton(
                onPressed: () {},
                child: const Text(ITexts.forgetPassword),
              ),
            ],
          ),
          const SizedBox(height: ISizes.spaceBtwSections - 8),

          /// Sign in Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(ITexts.signIn),
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwItems),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              child: const Text(ITexts.createAccount),
            ),
          ),
          const SizedBox(height: ISizes.spaceBtwSections),
        ],
      ),
    );
  }
}
