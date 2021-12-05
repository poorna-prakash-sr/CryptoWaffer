import 'package:cryptowaffer/http/crypto_http.dart';
import 'package:cryptowaffer/screens/crypto_dash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dash extends StatefulWidget {
  Dash({Key? key}) : super(key: key);

  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  late Future<void> name;

  Future<void> fun() async {
    return Provider.of<CryptoWallet>(context, listen: false).fetchcrypto();
  }

  @override
  void initState() {
    name = fun();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
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
    );
  }
}
