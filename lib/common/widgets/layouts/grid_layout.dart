import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // shrinkWrap: true bcz it not take all the space available , it shrink to only attribute required
      shrinkWrap: true,
      itemCount: itemCount,
      // physics: const NeverScrollableScrollPhysics() It not going to scroll it children
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent:
            mainAxisExtent, // mainAxisExtent means How Large the mainAxis Can Extents ,How Large the mainAxis Child of GridView can be
      ),
      itemBuilder: itemBuilder,
    );
  }
}
