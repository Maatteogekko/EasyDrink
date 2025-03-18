import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/core/presentation/widgets/centered_layout.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/card_scaffold.dart';
import 'package:easy_drink/qr_code/presentation/show_qr_code_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

@RoutePage()
class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage({
    required this.cocktail,
    required this.color,
    Key? key,
  }) : super(key: key);

  final Cocktail cocktail;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final imageHeight = height > 900 ? height * 0.5 : height * 0.45;
    return SafeArea(
      child: Scaffold(
        body: CardScaffold(
          headerColor: color,
          headerHeight: 65,
          headerChild: _Header(color: color, cocktail: cocktail),
          bodyColor: Colors.white,
          bodyChild: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Positioned.fill(
                child: ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: _Image(cocktail: cocktail),
                  ),
                ),
              ),
              _Image(cocktail: cocktail),
              Positioned(
                top: imageHeight - 80,
                right: 20,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: _FavoriteButton(cocktail: cocktail),
                ),
              ),
              Positioned.fill(
                top: imageHeight,
                child: _Body(cocktail: cocktail),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Image extends StatefulWidget {
  const _Image({
    Key? key,
    required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  State<_Image> createState() => _ImageState();
}

class _ImageState extends State<_Image> {
  late String _imageUri;

  @override
  void initState() {
    super.initState();
    _imageUri = widget.cocktail.imageUri;
  }

  @override
  Widget build(BuildContext context) {
    return FadeInImage.memoryNetwork(
      fit: BoxFit.fill,
      placeholder: kTransparentImage,
      image: _imageUri,
      imageErrorBuilder: (context, _, __) => GestureDetector(
        onTap: () {
          // FIXME this is not working
          setState(() {});
        },
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Image.asset("assets/images/cocktail_placeholder.jpg"),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CenteredLayout(
        maxWidth: 500,
        child: ListView(
          padding: const EdgeInsets.only(top: 20),
          children: [
            _DetailCard(
              title: "Istruzioni",
              child: Text(
                cocktail.instructions,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
            _DetailCard(
              title: "Ingredienti",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _AlignedTextColumn(
                    list: cocktail.ingredients,
                    alignment: CrossAxisAlignment.start,
                  ),
                  _AlignedTextColumn(
                    list: cocktail.measures,
                    alignment: CrossAxisAlignment.end,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AlignedTextColumn extends StatelessWidget {
  const _AlignedTextColumn({
    Key? key,
    this.alignment = CrossAxisAlignment.center,
    required this.list,
  }) : super(key: key);

  final List<String> list;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: list
          .map(
            (e) => Text(
              e,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 17),
            ),
          )
          .toList(),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
    required this.color,
    required this.cocktail,
  }) : super(key: key);

  final Color color;
  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6, right: 12),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: color.withOpacity(0.8),
        ),
        title: FittedBox(
          child: HeaderText(cocktail.name),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: const AutoLeadingButton(),
        actions: [
          IconButton(
            onPressed: () => showQrCodeDialog(
              context: context,
              cocktailId: cocktail.id,
            ),
            icon: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton({
    Key? key,
    required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteCocktailsNotifier>(
      builder: (context, notifier, child) {
        final isFavorite = notifier.isFavorite(cocktail.id);
        return ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              splashRadius: 40,
              onPressed: () => notifier.toggleFavorite(cocktail),
              icon: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: Colors.amber,
                size: 40,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _DetailCard extends StatelessWidget {
  const _DetailCard({
    required this.title,
    required this.child,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 17),
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: const Color(0xFFF5F4F7),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: child,
          ),
        ),
      ],
    );
  }
}
