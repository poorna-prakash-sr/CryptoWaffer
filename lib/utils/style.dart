import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

final gridrow = SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  childAspectRatio: 3 / 3,
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
);

final boxborder = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.amber.shade100,
      offset: const Offset(
        5.0,
        5.0,
      ),
      blurRadius: 10.0,
      spreadRadius: 2.0,
    ),
    BoxShadow(
      color: Colors.white,
      offset: const Offset(0.0, 0.0),
      blurRadius: 0.0,
      spreadRadius: 0.0,
    ),
  ],
  border: Border.all(
    color: Colors.amber.shade400,
  ),
);

final cfstyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

final rankstyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

final appbartext1 = GoogleFonts.ptSansNarrow(
  fontSize: 22,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

final appbartext2 = GoogleFonts.actor(
  fontSize: 22,
  fontWeight: FontWeight.w600,
  color: Colors.purple,
  shadows: [],
);
