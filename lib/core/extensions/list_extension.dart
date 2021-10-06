extension ListX on List {
  void addNotNull(dynamic element) {
    if (element != null) {
      add(element);
    }
  }

  void addAllNotNull(Iterable<dynamic>? elements) {
    if (elements != null) {
      for (var element in elements) {
        addNotNull(element);
      }
    }
  }

  T? safeGet<T>(int index) {
    if (index < length) {
      return this[index];
    }
    return null;
  }
}
