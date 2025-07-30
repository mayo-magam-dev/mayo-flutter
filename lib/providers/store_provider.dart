import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store_provider.g.dart';

@riverpod
class StoreNotifier extends _$StoreNotifier {
  @override
  StoreState build() {
    return const StoreState();
  }

  void changeView(int value) {
    state = state.copyWith(viewIndex: value);
  }
}

class StoreState {
  final int viewIndex;

  const StoreState({
    this.viewIndex = 0,
  });

  StoreState copyWith({
    int? viewIndex,
  }) {
    return StoreState(
      viewIndex: viewIndex ?? this.viewIndex,
    );
  }
}
