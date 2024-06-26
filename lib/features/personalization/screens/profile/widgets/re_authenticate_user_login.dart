import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Re-Authenticate User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Form(
          key: controller.reAuthFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Email
              TextFormField(
                controller: controller.verifyEmail,
                validator: TValidator.validateEmail,
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.direct_right,
                    ),
                    labelText: TTexts.email),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputField,
              ),

              /// Password
              Obx(
                () => TextFormField(
                  obscureText: controller.hiddenPassword.value,
                  controller: controller.verifyPassword,
                  validator: (value) =>
                      TValidator.validateEmptyText('Password', value),
                  decoration: InputDecoration(
                      labelText: TTexts.password,
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                        onPressed: () => controller.hiddenPassword.value =
                            !controller.hiddenPassword.value,
                        icon:  Icon(controller.hiddenPassword.value ? Iconsax.eye_slash : Iconsax.eye),
                      )),
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwSection,),

              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => controller.reAuthenticateEmailAndPasswordUser(), child: const Text('Verify')))
            ],
          ),
        ),
      ),
    );
  }
}
