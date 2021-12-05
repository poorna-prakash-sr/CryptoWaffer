import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cryptowaffer/http/detail_http.dart';
import 'package:cryptowaffer/widgets/details_coins.dart';
import 'package:cryptowaffer/widgets/loading.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoinDetails extends StatefulWidget {
  static const routeNamed = '/det';
  CoinDetails({Key? key}) : super(key: key);

  @override
  _CoinDetailsState createState() => _CoinDetailsState();
}

class _CoinDetailsState extends State<CoinDetails> {
  Future<void>? data;

  Future<void> getdata() async {
    final productid = ModalRoute.of(context)!.settings.arguments as String;
    return Provider.of<CoinDet>(context, listen: false).getdetails(productid);
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      setState(() {
        data = getdata();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final df = ModalRoute.of(context)!.settings.arguments as String;
    final f = Provider.of<CoinDet>(context).find(df);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.amber,
        title: Text(
          f.name,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: FutureBuilder(
        future: data,
        builder: (c, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Loading();
          }
          return CoinDWidget(
            name: f.name,
            img: f.img,
            des: f.lisdes,
            price: f.price,
            rank: f.rank,
          );
        },
      ),
    );
  }
}
