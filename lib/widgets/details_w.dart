import 'package:cryptowaffer/utils/style.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  final String? d;
  final String? p;
  final double? width;
  final double? fontsize;
  DetailsWidget({
    this.d,
    this.p,
    this.width,
    this.fontsize,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        top: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Rank',
                      style: rankstyle,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
                      width: 25,
                      color: Colors.amber.shade100,
                      child: Center(
                        child: Text(
                          d.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Price',
                      style: rankstyle,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
                      width: width,
                      color: Colors.amber.shade100,
                      child: Center(
                        child: Text(
                          p.toString(),
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: fontsize,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
