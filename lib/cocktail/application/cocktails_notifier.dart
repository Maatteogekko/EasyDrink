import 'dart:async';
import 'dart:io';

import 'package:easy_drink/cocktail/domain/alcoholic.dart';
import 'package:easy_drink/cocktail/domain/category.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/domain/filter.dart';
import 'package:easy_drink/cocktail/domain/response_exception.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:easy_drink/core/extensions/set_extension.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'cocktails_notifier.freezed.dart';

const _noConnectionString =
    "Non è stato possibile contattare il server.\nControlla la tua connessione e riprova.";

const _errorCodeString = "Si è verificato un errore, riprova più tardi";

@freezed
class CocktailsState with _$CocktailsState {
  const factory CocktailsState.initial({
    required Set<Cocktail> cocktails,
    required Filter filter,
  }) = _Initial;
  const factory CocktailsState.loading({
    required Set<Cocktail> cocktails,
    required Filter filter,
  }) = _Loading;
  const factory CocktailsState.data({
    required Set<Cocktail> cocktails,
    required Filter filter,
  }) = _Data;
  const factory CocktailsState.failure({
    required Set<Cocktail> cocktails,
    required Filter filter,
    required String message,
    void Function()? failedAction,
  }) = _Failure;
}

class CocktailsNotifier extends StateNotifier<CocktailsState> {
  final CocktailRepository _repository;

  CocktailsNotifier(this._repository)
      : super(
          const CocktailsState.initial(filter: Filter(), cocktails: {}),
        );

  List<String> _ingredients = [];
  List<String> get ingredients => _ingredients;

  List<String> get selectedIngredients => state.filter.ingredients;
  List<Category> get selectedCategories => state.filter.categories;
  List<Alcoholic> get selectedAlcoholics => state.filter.alcoholicList;

  final Set<Cocktail> _nonCompliantCocktails = {};

  void updateIngredientsFilter(List<String> selectedIngredients) {
    state = state.copyWith(filter: state.filter.copyWith(ingredients: selectedIngredients));
    _filter(state.cocktails);
  }

  void updateCategoriesFilter(List<Category> selectedCategories) {
    state = state.copyWith(filter: state.filter.copyWith(categories: selectedCategories));
    _filter(state.cocktails);
  }

  void updateAlcoholicFilter(List<Alcoholic> selectedAlcoholics) {
    state = state.copyWith(filter: state.filter.copyWith(alcoholicList: selectedAlcoholics));
    _filter(state.cocktails);
  }

  Set<Cocktail> _filter(Set<Cocktail> cocktails) {
    final updatedCocktails = cocktails..addAll(_nonCompliantCocktails);

    updatedCocktails.retainWhere(
      (cocktail) {
        bool keep = false;

        for (var ingredient in cocktail.ingredients) {
          if (state.filter.ingredients.contains(ingredient)) {
            keep = true;
          }
        }
        if (!keep) {
          _nonCompliantCocktails.add(cocktail);
        }
        return keep;
      },
    );

    updatedCocktails.retainWhere(
      (cocktail) {
        bool keep = false;

        if (state.filter.categories.contains(cocktail.category)) {
          keep = true;
        }

        if (!keep) {
          _nonCompliantCocktails.add(cocktail);
        }
        return keep;
      },
    );

    updatedCocktails.retainWhere(
      (cocktail) {
        bool keep = false;

        if (state.filter.alcoholicList.contains(cocktail.alcoholic)) {
          keep = true;
        }

        if (!keep) {
          _nonCompliantCocktails.add(cocktail);
        }
        return keep;
      },
    );

    return updatedCocktails;
  }

  Future<void> search(String query) async {
    state = CocktailsState.loading(cocktails: {}, filter: state.filter);
    _nonCompliantCocktails.clear();

    try {
      await _fetchIngredients();
      final newCocktails = <Cocktail>{}..addAll(await _repository.getCocktailsByName(query));
      state = CocktailsState.data(cocktails: _filter(newCocktails), filter: state.filter);
    } on ResponseException {
      state = CocktailsState.failure(
        cocktails: state.cocktails,
        filter: state.filter,
        failedAction: () => search(query),
        message: _errorCodeString,
      );
    } on SocketException {
      state = CocktailsState.failure(
        cocktails: state.cocktails,
        filter: state.filter,
        failedAction: () => search(query),
        message: _noConnectionString,
      );
    }
  }

  Future<void> _fetchIngredients() async {
    _ingredients = await _repository.getIngredients();
    _ingredients.sort();

    // default is to have all the ingredients enabled
    state = state.copyWith(filter: state.filter.copyWith(ingredients: ingredients));
  }

  Future<void> getRandoms() async {
    state = CocktailsState.loading(cocktails: {}, filter: state.filter);

    try {
      final newCocktails = <Cocktail>{};
      for (var i = 0; i < 3; i++) {
        newCocktails.addNotNull(await _repository.getRandomCocktail());
      }
      state = CocktailsState.data(cocktails: newCocktails, filter: state.filter);
    } on ResponseException {
      state = CocktailsState.failure(
        cocktails: state.cocktails,
        filter: state.filter,
        failedAction: () => getRandoms(),
        message: _errorCodeString,
      );
    } on SocketException {
      state = CocktailsState.failure(
        cocktails: state.cocktails,
        filter: state.filter,
        failedAction: () => getRandoms(),
        message: _noConnectionString,
      );
    }
  }
}
