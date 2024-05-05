import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';



class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',onPressed: (){},),
        Text('Pratham Makwana',style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          children: [
            const Icon(Icons.phone,size: 16,color: Colors.grey,),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text('+92-317-8059525',style: Theme.of(context).textTheme.bodyMedium,),

          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          children: [
            const Icon(Icons.location_history,size: 16,color: Colors.grey,),
            SizedBox(height: TSizes.spaceBtwItems,),
            Text('South Liana, Maine 87695 USA',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),

          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 2,),
      ],
    );
  }
}
