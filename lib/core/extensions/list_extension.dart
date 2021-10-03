extension ListX on List {
  void addNotNull(dynamic element) {
    if (element != null) {
      add(element);
    }
  }

  void addAllNotNull(Iterable<dynamic> elements) {
    for (var element in elements) {
      addNotNull(element);
    }
  }
}
