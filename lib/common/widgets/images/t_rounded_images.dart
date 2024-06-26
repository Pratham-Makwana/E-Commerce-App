import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/common/widgets/Shimmers/shimmer.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

/// This Class for the Home Promo Slider Image
class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.boxFit = BoxFit.contain,
    this.backgroundColor,
    this.isNetwork = false,
    this.borderRadius = TSizes.md,
  });

  final double? width, height;
  final bool applyImageRadius;
  final String imageUrl;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry? padding;
  final bool isNetwork;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        // ClipRRect is Use for give the radius to thh image
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: isNetwork
              ? CachedNetworkImage(
                  fit: boxFit,
                  imageUrl: imageUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      TShimmerEffect(
                    width: width ?? double.infinity,
                    height: height ?? 158,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )
              : Image(
                  image: AssetImage(imageUrl),
                  fit: boxFit,
                ),

          /* Image(
            fit: boxFit,
            image: isNetwork
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),*/
        ),
      ),
    );
  }
}
