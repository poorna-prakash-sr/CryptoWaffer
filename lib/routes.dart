import 'package:cryptowaffer/model/coin_details.dart';
import 'package:cryptowaffer/screens/coins_details.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  CoinDetails.routeNamed: (nav) => CoinDetails(),
};
