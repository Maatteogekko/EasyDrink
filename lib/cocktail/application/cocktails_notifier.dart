import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_dto.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:easy_drink/core/extensions/list_extension.dart';
import 'package:easy_drink/core/infrastructure/sembast_database.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';

class CocktailsNotifier extends ChangeNotifier {
  final CocktailRepository _repository;
  final SembastDatabase _database;
  final _store = stringMapStoreFactory.store('favoriteCocktails');

  CocktailsNotifier(this._repository, this._database);

  List<Cocktail> _cocktails = [];
  UnmodifiableListView<Cocktail> get cocktails => UnmodifiableListView(_cocktails);

  final List<Cocktail> _favoriteCocktails = [];
  UnmodifiableListView<Cocktail> get favoriteCocktails => UnmodifiableListView(_favoriteCocktails);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _isLoadingFavorites = false;
  bool get isLoadingFavorites => _isLoadingFavorites;

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

  void addFavorite(Cocktail cocktail) async {
    if (_favoriteCocktails.contains(cocktail)) {
      return;
    }

    _favoriteCocktails.add(cocktail);
    await _saveFavoriteToDatabase(cocktail);

    notifyListeners();
  }

  void removeFavorite(Cocktail cocktail) async {
    _favoriteCocktails.remove(cocktail);
    await _removeFavoriteFromDatabase(cocktail);

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

  Future<void> _saveFavoriteToDatabase(Cocktail cocktail) async {
    final dto = CocktailDTO.fromDomain(cocktail);
    await _store
        .record(
          dto.idDrink,
        )
        .put(
          _database.instance,
          dto.toJson(),
        );
  }

  Future<void> _removeFavoriteFromDatabase(Cocktail cocktail) async {
    final dto = CocktailDTO.fromDomain(cocktail);
    await _store.delete(_database.instance,
        finder: Finder(
          limit: 1,
          filter: Filter.byKey(dto.idDrink),
        ));
  }

  Future<void> getFavoritesFromDatabase() async {
    _isLoadingFavorites = true;
    notifyListeners();

    final records = await _store.find(_database.instance);

    _favoriteCocktails.addAll(
      records
          .map(
            (e) => CocktailDTO.fromJson(e.value).toDomain(),
          )
          .toList(),
    );

    _isLoadingFavorites = false;
    notifyListeners();
  }
}
