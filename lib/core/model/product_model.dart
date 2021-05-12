import 'seller_model.dart';

class ProductModel {
  final String id;
  final String name;
  final String unity;
  final String description;
  final String productImage;
  final double price;
  final SellerModel seller;

  ProductModel(this.id, this.name, this.unity, this.description,
      this.productImage, this.price, this.seller);
}
