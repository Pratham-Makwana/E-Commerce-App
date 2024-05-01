import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';

import 'package:flutter/material.dart';


class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(),


            /// Product Details
          ],
        ),
      ),
    );
  }
}


