class StoreState {
  int viewIndex;

  StoreState({this.viewIndex = 0});

  StoreState copyWith({
    int? viewIndex,
  }) {
    return StoreState(viewIndex: viewIndex ?? this.viewIndex);
  }
}
