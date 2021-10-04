import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CocktailsNotifier extends ChangeNotifier {
  final CocktailRepository _repository;

  CocktailsNotifier(this._repository);

  List<Cocktail> _cocktails = [];
  UnmodifiableListView<Cocktail> get cocktails => UnmodifiableListView(_cocktails);

  final List<Cocktail> _favoriteCocktails = [];
  UnmodifiableListView<Cocktail> get favoriteCocktails => UnmodifiableListView(_favoriteCocktails);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future searchCocktailByName(String name) async {
    _isLoading = true;
    notifyListeners();

    // TODO manage exception
    _cocktails = await _repository.getCocktailsByName(name);

    _isLoading = false;
    notifyListeners();
  }

  void addFavorite(Cocktail cocktail) {
    if (_favoriteCocktails.contains(cocktail)) {
      return;
    }

    _favoriteCocktails.add(cocktail);
  }

  void removeFavorite(Cocktail cocktail) => _favoriteCocktails.remove(cocktail);

  void searchCocktailByIngredient(String ingredient) async {
    _isLoading = true;
    notifyListeners();

    // TODO manage exception
    _cocktails = await _repository.getCocktailsByIngredient(ingredient);

    _isLoading = false;
    notifyListeners();
  }
}
