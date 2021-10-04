import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CocktailsNotifier extends ChangeNotifier {
  final CocktailRepository _repository;

  CocktailsNotifier(this._repository);

  List<Cocktail> _cocktails = [];
  UnmodifiableListView<Cocktail> get cocktails => UnmodifiableListView(_cocktails);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future searchCocktail(String name) async {
    _isLoading = true;
    notifyListeners();

    // TODO manage exception
    _cocktails = await _repository.getCocktailsByName(name);
    notifyListeners();
  }
}
