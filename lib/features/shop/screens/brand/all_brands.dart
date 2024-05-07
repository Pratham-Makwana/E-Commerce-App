import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_cart.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// ----- Heading
              const TSectionHeading(title: 'Brand',showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),


              /// Brands
              TGridLayout(mainAxisExtent: 80,itemCount: 10, itemBuilder: (context,index)=>  TBrandCart(showBorder: true,onTap: ()=> Get.to(()=> const BrandProduct()),))
            ],
          ),
        ),
      ),
    );
  }
}
