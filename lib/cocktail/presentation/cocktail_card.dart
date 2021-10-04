import 'package:easy_drink/cocktail/domain/alcoholic.dart';
import 'package:easy_drink/cocktail/domain/category.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class CocktailCard extends StatelessWidget {
  const CocktailCard({
    required this.cocktail,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final Cocktail cocktail;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(6),
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: cocktail.thumbnailUri,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                child: Text(
                  cocktail.name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              CocktailTile(
                text: cocktail.category.value,
                icon: const Icon(Icons.category_rounded),
              ),
              CocktailTile(
                text: cocktail.alchoholic.value,
                icon: const Icon(Icons.wine_bar),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CocktailTile extends StatelessWidget {
  const CocktailTile({
    Key? key,
    required this.text,
    this.icon,
  }) : super(key: key);

  final String text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity.compact,
      leading: icon,
      title: Text(
        text,
        textAlign: TextAlign.center,
      ),
      horizontalTitleGap: 0,
    );
  }
}
