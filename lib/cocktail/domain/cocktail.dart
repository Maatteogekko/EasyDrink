import 'alcoholic.dart';
import 'category.dart';

class Cocktail {
  final String id;
  final String name;
  final Category category;
  final Alcoholic alchoholic;
  final String instructions;
  final List<String> ingredients;
  final List<String> measures;
  final String imageUri;

  Cocktail({
    required this.id,
    required this.name,
    required this.category,
    required this.alchoholic,
    required this.instructions,
    required this.ingredients,
    required this.measures,
    required this.imageUri,
  });

  String get thumbnailUri => imageUri + "/preview";
}
