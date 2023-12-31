import 'package:foodmanagementsystem/models/products_model.dart';

class CartModel {
  int? id;
  String? name;
  int? price;
  String? img;
  String? location;
  int? quantity;
  bool? isExist;
  String? time;
  ProductModel? product;

  CartModel({
    this.id,
    this.name,
    this.price,
    this.img,
    this.location,
    this.quantity,
    this.isExist,
    this.time,
    this.product,
  });
  // converts from json to object
  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    img = json['img'];
    location = json['location'];
    quantity = json['quantity'];
    isExist = json['isExist'];
    time = json['time'];
    product = ProductModel.fromJson(json['product']);
  }

  //converts object to map ;json
  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "price": this.price,
      "img": this.img,
      "quantity": this.quantity,
      "isExist": this.isExist,
      "time": this.time,
      "product":this.product!.toJson()
    };
  }
}
