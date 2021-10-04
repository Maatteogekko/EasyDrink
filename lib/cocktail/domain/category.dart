import 'package:freezed_annotation/freezed_annotation.dart';

// IMPROVE do not repeat strings

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

extension CategoryX on Category {
  static const values = {
    Category.ordinaryDrink: "Ordinary Drink",
    Category.cockTail: "Cocktail",
    Category.milkFloatShake: "Milk / Float / Shake",
    Category.otherUnknown: "Other/Unknown",
    Category.cocoa: "Cocoa",
    Category.shot: "Shot",
    Category.coffeeTea: "Coffee / Tea",
    Category.homemadeLiqueur: "Homemade Liqueur",
    Category.punchPartyDrink: "Punch / Party Drink",
    Category.beer: "Beer",
    Category.softDrinkSoda: "Soft Drink / Soda",
  };

  String get value {
    assert(values[this] != null);
    return values[this]!;
  }
}
