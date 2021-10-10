import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white),
      ),
    );
  }
}
