import 'package:cryptowaffer/http/detail_http.dart';
import 'package:cryptowaffer/model/coin_details.dart';
import 'package:cryptowaffer/screens/crypto_dash.dart';
import 'package:cryptowaffer/widgets/appbar.dart';
import 'package:cryptowaffer/widgets/coin_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../http/crypto_http.dart';

class AllHome extends StatefulWidget {
  @override
  _AllHomeState createState() => _AllHomeState();
}

class _AllHomeState extends State<AllHome> {
  late Future<void> name;
  late Future<void> name1;

  Future<void> fun() async {
    return Provider.of<CryptoWallet>(context, listen: false).fetchcrypto();
  }

  Future<void> fun1() async {
    return Provider.of<CoinDet>(context, listen: false).getdetails('bitcoin');
  }

  @override
  void initState() {
    name = fun();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: FutureBuilder(
        future: name,
        builder: (c, s) {
          if (s.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.amber,
              ),
            );
          }
          return Center(
            child: CryptoDash(),
          );
        },
      ),
    );
  }
}
