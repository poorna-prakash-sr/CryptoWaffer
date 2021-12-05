import 'package:flutter/cupertino.dart';

class DetailsCrypto with ChangeNotifier {
  final String id;
  final String name;
  final lisdes;
  final String img;
  final rank;
  final price;
  final low;
  final high;
  DetailsCrypto({
    required this.id,
    required this.name,
    this.lisdes,
    required this.img,
    this.rank,
    this.price,
    this.low,
    this.high,
  });

  factory DetailsCrypto.fromJson(Map<String, dynamic> json) {
    return DetailsCrypto(
      id: json['id'],
      name: json['name'],
      lisdes: json['description']['en'],
      img: json['image']['large'],
      price: json['market_data']['current_price']['inr'],
      rank: json['market_cap_rank'],
      low: json['high_24h']['inr'],
      high: json['low_24h']['inr'],
    );
  }
}
