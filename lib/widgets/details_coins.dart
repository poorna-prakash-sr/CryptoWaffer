import 'package:cryptowaffer/widgets/details_w.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class CoinDWidget extends StatelessWidget {
  final String img;
  final String name;
  final String des;
  final rank;
  final price;
  final low;
  final high;
  CoinDWidget({
    required this.img,
    required this.name,
    required this.des,
    this.rank,
    this.price,
    this.low,
    this.high,
  });

  @override
  Widget build(BuildContext context) {
    var format = NumberFormat.currency(locale: 'HI');
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Container(
            child: Center(
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            name,
            style: GoogleFonts.actor(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                des,
                maxLines: 8,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DetailsWidget(
              width: 150,
              d: rank.toString(),
              p: format.format(123333333),
              fontsize: 16,
            ),
          )
        ],
      ),
    );
  }
}
