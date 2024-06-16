

import 'package:e_commerce_app/features/shop/models/banner_model.dart';
import 'package:e_commerce_app/features/shop/models/brand_model.dart';
import 'package:e_commerce_app/features/shop/models/category_model.dart';
import 'package:e_commerce_app/features/shop/models/product_attribute_model.dart';
import 'package:e_commerce_app/features/shop/models/product_model.dart';
import 'package:e_commerce_app/features/shop/models/product_variation_model.dart';
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

  /// -- List of all Products
  static final List<ProductModel> products = [
    ProductModel(
      id: '001',
      title: 'Green Nike sports show',
      stock: 15,
      price: 135,
      isFeatured: true,
      thumbnail: TImages.productImage1,
      description: 'Green Nike sports shoe',
      brand: BrandModel(
          id: '1',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage1,
        TImages.productImage23,
        TImages.productImage21,
        TImages.productImage9
      ],
      salePrice: 30,
      sku: 'ABR4568',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['EU 30', 'EU 32', 'Eu 34']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage1,
            description:
                'This is a Product description for green Nike sports shoe.',
            attributeVales: {'Color': 'Green', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '2',
            stock: 15,
            price: 132,
            image: TImages.productImage23,
            attributeVales: {'Color': 'Black', 'Size': 'Eu 32'}),
        ProductVariationModel(
            id: '3',
            stock: 0,
            price: 234,
            image: TImages.productImage23,
            attributeVales: {'Color': 'Black', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '4',
            stock: 222,
            price: 232,
            image: TImages.productImage1,
            attributeVales: {'Color': 'Green', 'Size': 'Eu 32'}),
        ProductVariationModel(
            id: '5',
            stock: 0,
            price: 334,
            image: TImages.productImage21,
            attributeVales: {'Color': 'Red', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '6',
            stock: 11,
            price: 332,
            image: TImages.productImage21,
            attributeVales: {'Color': 'Red', 'Size': 'Eu 32'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
        id: '002',
        title: 'Blue T-Shirt for all ages',
        stock: 15,
        price: 35,
        isFeatured: true,
        thumbnail: TImages.productImage69,
        description:
            'this is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am just practicing and nothing else',
        brand: BrandModel(id: '6', image: TImages.zaraLogo, name: 'ZARA'),
        images: [
          TImages.productImage68,
          TImages.productImage69,
          TImages.productImage5
        ],
        salePrice: 30,
        sku: 'ABR4568',
        categoryId: '16',
        productAttributes: [
          ProductAttributeModel(
              name: 'Color', values: ['Green', 'Black', 'Red']),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'Eu 34']),
        ],
        productType: 'ProductType.single'),
    ProductModel(
        id: '003',
        title: 'Leather brown Jacket',
        stock: 15,
        price: 38000,
        isFeatured: false,
        thumbnail: TImages.productImage64,
        description:
        'This is a Product description for Leather brown Jacket. There are more things that can be added but i am just practicing and nothing else',
        brand: BrandModel(id: '6', image: TImages.zaraLogo, name: 'ZARA'),
        images: [
          TImages.productImage64,
          TImages.productImage65,
          TImages.productImage66
        ],
        salePrice: 30,
        sku: 'ABR4568',
        categoryId: '16',
        productAttributes: [
          ProductAttributeModel(
              name: 'Color', values: ['Green', 'Black', 'Red']),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'Eu 34']),
        ],
        productType: 'ProductType.single'),
    ProductModel(
      id: '004',
      title: '4 Color collar t-shirt dry fit',
      stock: 15,
      price: 135,
      isFeatured: true,
      thumbnail: TImages.productImage60,
      description: 'This is a Product description for 4 Color t-shirt dy fit. There are more things that can be added but i am just practicing and nothing else',
      brand: BrandModel(
          id: '6',
          image: TImages.zaraLogo,
          name: 'ZARA'),
      images: [
        TImages.productImage60,
        TImages.productImage61,
        TImages.productImage62,
        TImages.productImage63
      ],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '16',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Black', 'Red']),
        ProductAttributeModel(
            name: 'Size', values: ['EU 30', 'EU 32', 'Eu 34']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage60,
            description:
            'This is a Product description for 4 Color t-shirt dy fit.',
            attributeVales: {'Color': 'Red', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '2',
            stock: 15,
            price: 132,
            image: TImages.productImage61,
            attributeVales: {'Color': 'Red', 'Size': 'Eu 32'}),
        ProductVariationModel(
            id: '3',
            stock: 0,
            price: 234,
            image: TImages.productImage61,
            attributeVales: {'Color': 'Yellow', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '4',
            stock: 222,
            price: 232,
            image: TImages.productImage61,
            attributeVales: {'Color': 'Yellow', 'Size': 'Eu 32'}),
        ProductVariationModel(
            id: '5',
            stock: 0,
            price: 334,
            image: TImages.productImage62,
            attributeVales: {'Color': 'Green', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '6',
            stock: 11,
            price: 332,
            image: TImages.productImage62,
            attributeVales: {'Color': 'Green', 'Size': 'Eu 30'}),
        ProductVariationModel(
            id: '7',
            stock: 0,
            price: 334,
            image: TImages.productImage63,
            attributeVales: {'Color': 'Blue', 'Size': 'Eu 30'}),
        ProductVariationModel(
            id: '8',
            stock: 11,
            price: 332,
            image: TImages.productImage63,
            attributeVales: {'Color': 'Blue', 'Size': 'Eu 34'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '005',
      title: 'Nike Air Jordon Shoes',
      stock: 15,
      price: 35,
      isFeatured: false,
      thumbnail: TImages.productImage10,
      description: 'Nike Air Jordon Shoes for running. Quality product,Long Lasting',
      brand: BrandModel(
          id: '1',
          image: TImages.nikeLogo,
          name: 'Nike',
          productsCount: 256,
          isFeatured: true),
      images: [
        TImages.productImage7,
        TImages.productImage8,
        TImages.productImage9,
        TImages.productImage10
      ],
      salePrice: 30,
      sku: 'ABR4568',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Orange', 'Black', 'Brown']),
        ProductAttributeModel(
            name: 'Size', values: ['EU 30', 'EU 32', 'Eu 34']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 12.6,
            image: TImages.productImage8,
            description:
            'Flutter is Google mobile UI open source framework to build high-quality native (super fast) interfaces for IOS ans Android apps with the unified codebase.',
            attributeVales: {'Color': 'Orange', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '2',
            stock: 15,
            price: 35,
            image: TImages.productImage7,
            attributeVales: {'Color': 'Black', 'Size': 'Eu 32'}),
        ProductVariationModel(
            id: '3',
            stock: 14,
            price: 34,
            image: TImages.productImage9,
            attributeVales: {'Color': 'Brown', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '4',
            stock: 13,
            price: 33,
            image: TImages.productImage7,
            attributeVales: {'Color': 'Black', 'Size': 'Eu 34'}),
        ProductVariationModel(
            id: '5',
            stock: 15,
            price: 32,
            image: TImages.productImage9,
            attributeVales: {'Color': 'Brown', 'Size': 'Eu 32'}),
        ProductVariationModel(
            id: '6',
            stock: 11,
            price: 31,
            image: TImages.productImage8,
            attributeVales: {'Color': 'Orange', 'Size': 'Eu 32'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '006',
      title: 'SAMSUNG GALAXY S9 (Pink, 64 GB) (4 GB RAM)',
      stock: 15,
      price: 750,
      isFeatured: false,
      thumbnail: TImages.productImage11,
      description: 'SAMSUNG GALAXY S9 (Pink, 64 GB) (4 GB RAM), Long Battery timing',
      brand: BrandModel(
          id: '7',
          image: TImages.appleLogo,
          name: 'Samsung',
      ),
      images: [
        TImages.productImage11,
        TImages.productImage12,
        TImages.productImage13,
        TImages.productImage12
      ],
      salePrice: 650,
      sku: 'ABR4568',
      categoryId: '2',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
        ProductAttributeModel(
            name: 'Size', values: [ 'EU 32', 'Eu 34']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '007',
      title: 'TOMI Dog food',
      stock: 15,
      price: 20,
      isFeatured: false,
      thumbnail: TImages.productImage18,
      description: 'This is a Product description for TOMI DOg food.',
      brand: BrandModel(
        id: '7',
        image: TImages.appleLogo,
        name: 'Tomi',
      ),
      salePrice: 10,
      sku: 'ABR4568',
      categoryId: '4',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
        ProductAttributeModel(
            name: 'Size', values: [ 'EU 32', 'Eu 34']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '009',
      title: 'Nike Air jordon 19 Blue',
      stock: 15,
      price: 750,
      isFeatured: false,
      thumbnail: TImages.productImage11,
      description: 'This is a Product description for Nike Air Jordon 19',
      brand: BrandModel(
        id: '1',
        image: TImages.nikeLogo,
        name: 'Nike',
      ),
      images: [
        TImages.productImage19,
        TImages.productImage20,
        TImages.productImage21,
        TImages.productImage22
      ],
      salePrice: 200,
      sku: 'ABR4568',
      categoryId: '8',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
        ProductAttributeModel(
            name: 'Size', values: [ 'EU 32', 'Eu 34']),
      ],
      productType: 'ProductType.single',
    ),

  ];
}