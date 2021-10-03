import 'package:freezed_annotation/freezed_annotation.dart';

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

enum Category {
  @JsonValue("Ordinary Drink")
  ordinaryDrink,
  @JsonValue("Cocktail")
  cockTail,
  @JsonValue("Milk / Float / Shake")
  milkFloatShake,
  @JsonValue("Other/Unknown")
  otherUnknown,
  @JsonValue("Cocoa")
  cocoa,
  @JsonValue("Shot")
  shot,
  @JsonValue("Coffee / Tea")
  coffeeTea,
  @JsonValue("Homemade Liqueur")
  homemadeLiqueur,
  @JsonValue("Punch / Party Drink")
  punchPartyDrink,
  @JsonValue("Beer")
  beer,
  @JsonValue("Soft Drink / Soda")
  softDrinkSoda,
}

enum Alcoholic {
  @JsonValue("Alcoholic")
  alcoholic,
  @JsonValue("Non alcoholic")
  nonAlcoholic,
  @JsonValue("Optional alcohol")
  optionalAlchol
}
