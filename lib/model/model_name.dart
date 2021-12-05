import 'package:flutter/cupertino.dart';

class Crypto with ChangeNotifier {
  final String id;
  final String name;
  final String image;
  final int rank;
  final price;

  Crypto({
    required this.id,
    required this.name,
    required this.image,
    required this.rank,
    required this.price,
  });

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      rank: json['market_cap_rank'],
      price: json['current_price'],
    );
  }
}
