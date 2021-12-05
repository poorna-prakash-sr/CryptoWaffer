import 'package:cryptowaffer/http/crypto_http.dart';
import 'package:cryptowaffer/http/detail_http.dart';
import 'package:cryptowaffer/model/coin_details.dart';
import 'package:cryptowaffer/routes.dart';
import 'package:cryptowaffer/screens/all_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (c) => CryptoWallet(),
        ),
        ChangeNotifierProvider(
          create: (c) => CoinDet(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.amber,
          textTheme: GoogleFonts.publicSansTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: AllHome(),
        routes: routes,
      ),
    );
  }
}
