import 'dart:convert';

import 'package:cryptowaffer/model/model_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CryptoWallet with ChangeNotifier {
  List<Crypto> _items = [];

  List<Crypto> get items {
    return [..._items];
  }

  Future<void> fetchcrypto() async {
    final url = Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr');
    final res = await http.get(url);
    print(res.statusCode);
    if (res.statusCode == 200) {
      var fv = jsonDecode(res.body);
      final List<Crypto> fin = [];
      fv.forEach((e) {
        Crypto c = Crypto.fromJson(e);
        fin.add(c);
      });
      _items = fin;

      notifyListeners();
    } else {
      throw Exception('null');
    }

    notifyListeners();
  }
}
