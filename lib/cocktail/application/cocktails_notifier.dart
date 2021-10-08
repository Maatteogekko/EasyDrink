import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:easy_drink/core/extensions/list_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CocktailsNotifier extends ChangeNotifier {
  final CocktailRepository _repository;

  CocktailsNotifier(this._repository);

  List<Cocktail> _cocktails = [];
  UnmodifiableListView<Cocktail> get cocktails => UnmodifiableListView(_cocktails);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> searchCocktailByName(String name) async {
    _cocktails.clear();

    _isLoading = true;
    notifyListeners();

    // TODO manage exception
    _cocktails = await _repository.getCocktailsByName(name);

    _isLoading = false;
    notifyListeners();
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

  void searchCocktailByIngredient(String ingredient) async {
    _cocktails.clear();

    _isLoading = true;
    notifyListeners();

    // TODO manage exception

    int i = 0;
    await for (final cocktail in _repository.getCocktailsByIngredient(ingredient)) {
      _cocktails.addNotNull(cocktail);

      if (i % 10 == 0 && i != 0) {
        // HACK here it doesn't really stop loading
        _isLoading = false;
        notifyListeners();
      }
      i++;
    }

    notifyListeners();
  }
}
