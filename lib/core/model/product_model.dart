import 'package:flutter/material.dart';

class Product {
  final int id, qtdSold, qtdAvailable;
  final String title,
      description,
      productOrigin,
      unity,
      sellerName,
      sellerMarket;
  final List<String> images;
  final double rating, price;
  //final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    this.sellerName,
    this.rating = 0.0,
    this.productOrigin,
    this.sellerMarket,
    this.unity,
    this.qtdSold,
    this.qtdAvailable,
    //this.isFavourite = false,
    //this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
      id: 1,
      images: [
        "assets/images/products/carrots3.jpeg",
        "assets/images/products/carrots2.jpg",
        "assets/images/products/carrots.jpg",
      ],
      sellerName: "Dona Marta",
      title: "Cenoura",
      price: 25.00,
      description: description,
      rating: 4.8,
      productOrigin: "Kamavota",
      qtdAvailable: 15,
      qtdSold: 24,
      unity: "Kg",
      sellerMarket: "Mercado Central"
      //isFavourite: true,
      //isPopular: true,
      ),
  Product(
    id: 2,
    images: [
      "assets/images/products/tomato.jpg",
    ],
    sellerName: "Mana Mãezinha",
    title: "Tomate",
    price: 50.5,
    description: description,
    rating: 4.1,
    productOrigin: "Boane",
    qtdAvailable: 15,
    qtdSold: 24,
    unity: "Kg",
    sellerMarket: "Mercado Janete",
    //isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/products/potatoes.jpeg",
    ],
    sellerName: "Vovó Maria",
    title: "Batata",
    price: 15.55,
    description: description,
    rating: 4.1,
    productOrigin: "Dondo",
    qtdAvailable: 15,
    qtdSold: 24,
    unity: "Kg",
    sellerMarket: "Mercado Adelina",
    //isFavourite: true,
    //isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/products/oranges.jpg",
    ],
    sellerName: "Tio Paulo",
    title: "Laranja",
    price: 20.20,
    description: description,
    rating: 4.1,
    productOrigin: "Importado/RSA",
    qtdAvailable: 15,
    qtdSold: 24,
    unity: "Kg",
    sellerMarket: "Mercado Central",
    //isFavourite: true,
  ),
];

const String description = "Produto fresco;\nTamanho médio;\nFresco";
