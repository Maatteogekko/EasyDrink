import 'package:freezed_annotation/freezed_annotation.dart';

// IMPROVE do not repeat strings

enum Alcoholic {
  @JsonValue("Alcoholic")
  alcoholic,
  @JsonValue("Non alcoholic")
  nonAlcoholic,
  @JsonValue("Optional alcohol")
  optionalAlchol
}

extension AlcoholicX on Alcoholic {
  static const values = {
    Alcoholic.alcoholic: "Alcoholic",
    Alcoholic.nonAlcoholic: "Non alcoholic",
    Alcoholic.optionalAlchol: "Optional alcohol",
  };

  String get value {
    assert(values[this] != null);
    return values[this]!;
  }
}
