import 'package:cryptowaffer/utils/style.dart';
import 'package:cryptowaffer/widgets/coin_grid.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, value) {
        return [
          SliverAppBar(
            centerTitle: true,
            floating: true,
            backgroundColor: Colors.amber,
            elevation: 3,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Crypto',
                  style: appbartext1,
                ),
                Text(
                  ' Waffer',
                  style: appbartext2,
                ),
              ],
            ),
          ),
        ];
      },
      body: Column(
        children: [
          Expanded(
            child: CoinGrid(),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
