import 'package:e_commerce_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';


/// This Class Have HomeScreen's Listview
class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,

          /// itemBuilder: (_, index) first is context that i don't need and second is index it return the current index
          itemBuilder: (_, index) {
            /// lib/common/widgets/image_text_widgets/vertical_image_text.dart
            return TVerticalImageText(image: TImages.shoeIcon, title: 'Shoes',onTap: (){},);
          }),
    );
  }
}