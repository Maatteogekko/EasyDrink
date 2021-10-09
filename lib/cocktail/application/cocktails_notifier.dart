import 'dart:async';

import 'package:easy_drink/cocktail/domain/alcoholic.dart';
import 'package:easy_drink/cocktail/domain/category.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/domain/filter.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:easy_drink/core/extensions/set_extension.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';

class CocktailsNotifier extends ChangeNotifier {
  final CocktailRepository _repository;

  CocktailsNotifier(this._repository) {
    unawaited(fetchIngredients());
  }

  final Set<Cocktail> _cocktails = {};
  UnmodifiableListView<Cocktail> get cocktails => UnmodifiableListView(_cocktails);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<String> _ingredients = [];
  List<String> get ingredients => _ingredients;

  final Filter _filter = Filter();
  List<String> get selectedIngredients => _filter.ingredients;
  List<Category> get selectedCategories => _filter.categories;
  List<Alcoholic> get selectedAlcoholics => _filter.alcoholicList;

  final Set<Cocktail> _nonCompliantCocktails = {};

  void updateIngredientsFilter(List<String> selectedIngredients) {
    _filter.ingredients = selectedIngredients;
    _applyFilter();
    notifyListeners();
  }

  void _applyFilter() {
    _cocktails.addAll(_nonCompliantCocktails);

    _cocktails.retainWhere(
      (cocktail) {
        bool keep = false;

        for (var ingredient in cocktail.ingredients) {
          if (_filter.ingredients.contains(ingredient)) {
            keep = true;
          }
        }
        if (!keep) {
          _nonCompliantCocktails.add(cocktail);
        }
        return keep;
      },
    );

    // FIXME these two vvvvv need to become like the one above ^^^^^^^
    // for (var category in _filter.categories) {
    //   // ? retainWhere instead
    //   _cocktails.removeWhere(
    //     (cocktail) {
    //       if (cocktail.category != category) {
    //         _nonCompliantCocktails.add(cocktail);
    //         return true;
    //       }
    //       return false;
    //     },
    //   );
    // }

    // for (var alcoholic in _filter.alcoholicList) {
    //   // ? retainWhere instead
    //   _cocktails.removeWhere(
    //     (cocktail) {
    //       if (cocktail.alcoholic != alcoholic) {
    //         _nonCompliantCocktails.add(cocktail);
    //         return true;
    //       }
    //       return false;
    //     },
    //   );
    // }
  }

  Future<void> search(String query) async {
    _isLoading = true;
    notifyListeners();

    _cocktails.clear();
    _nonCompliantCocktails.clear();
    _cocktails.addAll(await _repository.getCocktailsByName(query));
    _applyFilter();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchIngredients() async {
    _ingredients = await _repository.getIngredients();
    _ingredients.sort();

    // defaults to having fall the ingredients enabled
    _filter.ingredients = _ingredients;
  }

  Future<void> getRandoms() async {
    _cocktails.clear();

    _isLoading = true;
    notifyListeners();

    // TODO manage exception
    for (var i = 0; i < 2; i++) {
      _cocktails.addNotNull(await _repository.getRandomCocktail());
    }

    _isLoading = false;
    notifyListeners();
  }
}
