extension SetX on Set {
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
}
