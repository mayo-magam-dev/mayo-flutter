import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayo_flutter/bloc/store/store_event.dart';
import 'package:mayo_flutter/bloc/store/store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  StoreBloc() : super(StoreState()) {
    on<ChangeViewEvent>(_handleChangeViewEvent);
  }

  void _handleChangeViewEvent(
    ChangeViewEvent event,
    Emitter<StoreState> emit,
  ) {
    emit(state.copyWith(viewIndex: event.value));
  }
}
