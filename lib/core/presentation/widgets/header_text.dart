import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO implement
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.headline4,
          color: Colors.white,
        ),
      ),
    );
  }
}
