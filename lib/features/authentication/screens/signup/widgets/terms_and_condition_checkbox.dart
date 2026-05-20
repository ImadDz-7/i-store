import 'package:flutter/material.dart';
import 'package:i_store_app/utils/constants/colors.dart';
import 'package:i_store_app/utils/constants/sized.dart';
import 'package:i_store_app/utils/constants/text_strings.dart';

class ITermsAndConditionCheckbox extends StatelessWidget {
  const ITermsAndConditionCheckbox({
    Key? key,
    required this.dark,
  }) : super(key: key);

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
