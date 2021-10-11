import 'dart:async';

import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_dto.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:easy_drink/core/infrastructure/sembast_database.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';

class FavoriteCocktailsNotifier extends ChangeNotifier {
  final CocktailRepository _repository;
  final SembastDatabase _database;
  final _store = stringMapStoreFactory.store('favoriteCocktails');

  FavoriteCocktailsNotifier(this._database, this._repository) {
    unawaited(_getFavoritesFromDatabase());
  }

  final List<Cocktail> _cocktails = [];
  UnmodifiableListView<Cocktail> get cocktails => UnmodifiableListView(_cocktails);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool isFavorite(String id) {
    return _cocktails.map((e) => e.id).contains(id);
  }

  void toggleFavorite(Cocktail cocktail) {
    if (isFavorite(cocktail.id)) {
      removeFavorite(cocktail.id);
    } else {
      addFavorite(cocktail);
    }

    notifyListeners();
  }

  void addFavorite(Cocktail cocktail) async {
    if (isFavorite(cocktail.id)) {
      return;
    }

    _cocktails.add(cocktail);
    await _saveFavoriteToDatabase(cocktail);

    notifyListeners();
  }

  void removeFavorite(String id) async {
    _cocktails.removeWhere((element) => element.id == id);
    await _removeFavoriteFromDatabase(id);

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

  Future<void> removeAllFavoritesFromDatabase() async {
    await _store.delete(
      _database.instance,
    );
    _cocktails.clear();
    notifyListeners();
  }

  Future<void> _removeFavoriteFromDatabase(String id) async {
    await _store.delete(
      _database.instance,
      finder: Finder(
        limit: 1,
        filter: Filter.byKey(id),
      ),
    );
  }

  Future<void> _getFavoritesFromDatabase() async {
    _isLoading = true;
    notifyListeners();

    // HACK await the initialization of the db
    while (!_database.hasBeenInitialized) {
      await Future.delayed(const Duration(milliseconds: 100));
    }

    final records = await _store.find(_database.instance);

    for (var record in records) {
      final cocktail = CocktailDTO.fromJson(record.value).toDomain();
      if (!_cocktails.contains(cocktail)) {
        _cocktails.add(cocktail);
      }
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<Cocktail?> getCocktail(String id) async {
    return await _repository.getCocktailFromId(id);
  }
}
