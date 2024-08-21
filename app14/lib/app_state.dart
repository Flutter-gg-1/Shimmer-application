class AppState {
  bool isLoading = false;

  static final AppState _shared = AppState._internal();

  AppState._internal();

  factory AppState() {
    return _shared;
  }
}
