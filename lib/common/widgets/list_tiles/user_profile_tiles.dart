import 'package:e_commerce_app/common/widgets/images/t_circular_images.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        width: 50,
        height: 50,
        padding: 0,
        image: TImages.user,
      ),
      title: Text(
        'Pratham Makwana',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),

      ),
      subtitle: Text(
        'makwanapratham13@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .apply(color: TColors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ) ,
      trailing: IconButton(onPressed: () => Get.to(() => const ProfileScreen()), icon: const Icon(Iconsax.edit,color: TColors.white,),),
    );
  }
}
