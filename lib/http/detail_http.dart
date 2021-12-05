import 'dart:convert';

import 'package:cryptowaffer/model/coin_details.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class CoinDet with ChangeNotifier {
  List<DetailsCrypto> _items = [];

  List<DetailsCrypto> get items {
    return [..._items];
  }

  Future<void> getdetails(String id) async {
    final url = Uri.parse('https://api.coingecko.com/api/v3/coins/$id');
    final res = await http.get(url);

    if (res.statusCode == 200) {
      var s = jsonDecode(res.body);
      List<DetailsCrypto> fin = [];

      fin.add(
        DetailsCrypto(
          id: s['id'],
          name: s['name'],
          lisdes: s['description']['en'],
          img: s['image']['large'],
          rank: s['market_cap_rank'],
          price: s['market_data']['current_price']['inr'],
        ),
      );
      _items = fin;
      print(_items[0].id);

      notifyListeners();
    } else {
      throw Exception('null');
    }
  }

  DetailsCrypto find(String id) {
    return _items.firstWhere(
      (v) => v.id == id,
      orElse: () => DetailsCrypto(
        id: '',
        name: '',
        lisdes: '',
        rank: '',
        high: '',
        low: '',
        img:
            'https://www.kindpng.com/picc/m/392-3926418_loading-spinner-loading-icon-png-transparent-png-download.png',
      ),
    );
  }
}
