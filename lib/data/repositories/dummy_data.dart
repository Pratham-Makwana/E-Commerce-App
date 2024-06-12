

import 'package:e_commerce_app/features/shop/models/banner_model.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';

class TDummyData{
  static final List<BannerModel> banners = [
    BannerModel(imageUrl: TImages.banner1, targetScreen: TRoutes.order, active: false),
    BannerModel(imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true),
    BannerModel(imageUrl: TImages.banner3, targetScreen: TRoutes.favourites, active: true),
    BannerModel(imageUrl: TImages.banner4, targetScreen: TRoutes.search, active: true),
    BannerModel(imageUrl: TImages.banner5, targetScreen: TRoutes.setting, active: true),
    BannerModel(imageUrl: TImages.banner6, targetScreen: TRoutes.userAddress, active: true),
    BannerModel(imageUrl: TImages.banner8, targetScreen: TRoutes.checkout, active: false),
  ];

  static final List<CategoryModel> categories = [
    CategoryModel(name: 'Sports', id: '1', image: TImages.sportIcon, isFeatured: true),
    CategoryModel(name: 'Furniture', id: '5', image: TImages.furnitureIcon, isFeatured: true),
    CategoryModel(name: 'Electronics', id: '2', image: TImages.electronicsIcon, isFeatured: true),
    CategoryModel(name: 'Clothes', id: '3', image: TImages.clothIcon, isFeatured: true),
    CategoryModel(name: 'Animals', id: '4', image: TImages.animalIcon, isFeatured: true),
    CategoryModel(name: 'Shoes', id: '6', image: TImages.shoeIcon, isFeatured: true),
    CategoryModel(name: 'Cosmetics', id: '7', image: TImages.cosmeticsIcon, isFeatured: true),
    CategoryModel(name: 'Jewelery', id: '14', image: TImages.jeweleryIcon, isFeatured: true),

    /// Subcategories
    CategoryModel(name: 'Sport Shoes', id: '8', image: TImages.sportIcon, isFeatured: false,parentId: '1'),
    CategoryModel(name: 'Track suits', id: '9', image: TImages.sportIcon, isFeatured: false,parentId: '1'),
    CategoryModel(name: 'Sports Equipments', id: '10', image: TImages.sportIcon, isFeatured: false, parentId: '1'),

    // Furniture
    CategoryModel(name: 'Bedroom furniture', id: '11', image: TImages.furnitureIcon, isFeatured: false, parentId: '5'),
    CategoryModel(name: 'Kitchen furniture', id: '12', image: TImages.furnitureIcon, isFeatured: false, parentId: '5'),
    CategoryModel(name: 'office furniture', id: '13', image: TImages.furnitureIcon, isFeatured: false, parentId: '5'),

    // Electronics
    CategoryModel(name: 'Laptop', id: '14', image: TImages.electronicsIcon, isFeatured: false, parentId: '2'),
    CategoryModel(name: 'Mobile', id: '15', image: TImages.electronicsIcon, isFeatured: false, parentId: '2'),
    CategoryModel(name: 'Shirts', id: '16', image: TImages.clothIcon, isFeatured: false, parentId: '3'),

  ];
}