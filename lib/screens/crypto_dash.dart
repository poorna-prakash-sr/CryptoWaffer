import 'package:cryptowaffer/widgets/coin_grid.dart';
import 'package:flutter/material.dart';

class CryptoDash extends StatelessWidget {
  const CryptoDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 2,
            child: CoinGrid(),
          ),
        ],
      ),
    );
  }
}
