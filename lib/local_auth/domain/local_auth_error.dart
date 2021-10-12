class LocalAuthError extends Error {
  final String message;

  LocalAuthError(this.message);

  @override
  String toString() {
    return message;
  }
}
