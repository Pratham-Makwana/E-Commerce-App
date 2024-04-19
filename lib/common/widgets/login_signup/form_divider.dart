import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utilis/constants/colors.dart';
import '../../../utilis/constants/text_strings.dart';
import '../../../utilis/helpers/helper_functions.dart';

class TFormDivider extends StatelessWidget {
  TFormDivider({super.key, required this.dividerText});

  String dividerText;

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? TColors.darkGrey : TColors.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          TTexts.orSignInWith.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: dark ? TColors.darkGrey : TColors.grey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}
