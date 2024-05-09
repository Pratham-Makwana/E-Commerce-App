import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_conditions_checkbox.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// First & Last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                  expands: false,
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputField),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                  expands: false,
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),

          /// Username
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
            expands: false,
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),

          /// Term and Condition Checkbox
          const TTermAndConditionCheckbox(),
          const SizedBox(
            height: TSizes.spaceBtwSection,
          ),

          /// Sign UP Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()), ///  Get. to required () => (Single line Function)
              child: const Text(
                TTexts.createAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
