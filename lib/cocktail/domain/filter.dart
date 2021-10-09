import 'package:easy_drink/cocktail/domain/alcoholic.dart';

import 'category.dart';

class Filter {
  List<String> ingredients = [];
  List<Category> categories = [];
  List<Alcoholic> alcoholicList = [];

  bool get hasNoIngredients => ingredients.isEmpty;
  bool get hasNoCategories => categories.isEmpty;
  bool get hasNoAlcoholic => alcoholicList.isEmpty;

  bool get isEmpty => hasNoAlcoholic && hasNoCategories && hasNoIngredients;
}
