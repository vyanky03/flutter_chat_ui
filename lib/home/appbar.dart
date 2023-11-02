import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.red.shade500,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: (const Icon(
        Icons.menu,
        size: 30,
        color: Colors.white,
      )),
    ),
    title: Text(
      'Chat',
      style: GoogleFonts.lato(
        textStyle: Theme.of(context).textTheme.displayLarge,
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: (const Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        )),
      ),
    ],
  );
}
