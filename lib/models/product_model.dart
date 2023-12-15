import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  int? id;
  String? imageUrl;
  String? title;
  double? price;
  double? rate;
  int? count;
  String? delivery;
  List<String>? keyWords;

  ProductModel({
    this.id,
    this.imageUrl,
    this.title,
    this.price,
    this.rate,
    this.count,
    this.delivery,
    this.keyWords,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        imageUrl,
        title,
        price,
        rate,
        count,
        delivery,
        keyWords,
      ];
}
