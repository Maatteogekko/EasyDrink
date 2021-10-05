import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardScaffold extends StatelessWidget {
  const CardScaffold({
    Key? key,
    required this.headerColor,
    required this.headerChild,
    required this.headerHeight,
    required this.bodyChild,
    required this.bodyColor,
  }) : super(key: key);

  final Color headerColor;
  final Widget headerChild;
  final double headerHeight;
  final Widget bodyChild;
  final Color bodyColor;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: headerColor.withOpacity(0.8)));
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              color: headerColor,
              child: headerChild,
              height: headerHeight + 30,
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 30),
            ),
          ),
          Positioned.fill(
            top: headerHeight,
            child: Container(
              clipBehavior: Clip.hardEdge,
              child: bodyChild,
              decoration: BoxDecoration(
                color: bodyColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
