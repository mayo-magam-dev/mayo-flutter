abstract class StoreEvent {}

class ChangeViewEvent extends StoreEvent {
  final int value;
  ChangeViewEvent(this.value);
}
