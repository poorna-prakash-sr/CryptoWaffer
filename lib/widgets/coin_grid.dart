import 'package:cryptowaffer/http/crypto_http.dart';
import 'package:cryptowaffer/http/detail_http.dart';
import 'package:cryptowaffer/model/model_name.dart';
import 'package:cryptowaffer/screens/coins_details.dart';
import 'package:cryptowaffer/utils/style.dart';
import 'package:cryptowaffer/widgets/details_w.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class CoinGrid extends StatelessWidget {
  final String? data;

  CoinGrid({this.data});
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<CryptoWallet>(context).items;
    var format = NumberFormat.currency(locale: 'HI');
    return Container(
      child: GridView.builder(
        itemCount: pro.length,
        gridDelegate: gridrow,
        itemBuilder: (c, i) => GridTile(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 8,
              left: 8,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    CoinDetails.routeNamed,
                    arguments: pro[i].id,
                  );
                },
                child: Container(
                  width: 40,
                  decoration: boxborder,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.020,
                        ),
                        Image.network(
                          pro[i].image,
                          height: 70,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Text(
                          pro[i].name,
                          style: cfstyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                        DetailsWidget(
                          d: pro[i].rank.toString(),
                          fontsize: 12,
                          p: format.format(pro[i].price),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
