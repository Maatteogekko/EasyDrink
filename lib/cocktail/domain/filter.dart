import 'package:easy_drink/cocktail/domain/alcoholic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'filter.freezed.dart';

@freezed
class Filter with _$Filter {
  const Filter._();
  const factory Filter({
    @Default([]) List<String> ingredients,
    @Default(Category.values) List<Category> categories,
    @Default(Alcoholic.values) List<Alcoholic> alcoholicList,
  }) = _Filter;

  bool get hasNoIngredients => ingredients.isEmpty;
  bool get hasNoCategories => categories.isEmpty;
  bool get hasNoAlcoholic => alcoholicList.isEmpty;

  bool get isEmpty => hasNoAlcoholic && hasNoCategories && hasNoIngredients;
}
