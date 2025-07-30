import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mayo_flutter/dataSource/reservation.dart';
import 'package:mayo_flutter/model/reservation/create_reservation_request.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_detail_response.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_response.dart';

part 'reservation_provider.g.dart';

@riverpod
class ReservationNotifier extends _$ReservationNotifier {
  final ReservationDataSource _dataSource = ReservationDataSource();

  @override
  ReservationState build() {
    return const ReservationState();
  }

  Future<void> loadReservations() async {
    state = state.copyWith(isLoading: true);
    try {
      final reservations = await _dataSource.getReservations();
      state = state.copyWith(
        reservations: reservations,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: '예약 목록 로딩 오류: $e',
        isLoading: false,
      );
    }
  }

  Future<void> loadReservationDetail(String reservationId) async {
    state = state.copyWith(isLoadingDetail: true);
    try {
      final detail = await _dataSource.getReservationDetail(reservationId);
      state = state.copyWith(
        reservationDetail: detail,
        isLoadingDetail: false,
      );
    } catch (e) {
      state = state.copyWith(
        error: '예약 상세 로딩 오류: $e',
        isLoadingDetail: false,
      );
    }
  }

  Future<void> createReservation(CreateReservationRequest request) async {
    state = state.copyWith(isCreating: true);
    try {
      await _dataSource.createReservation(request: request);
      state = state.copyWith(
        isCreating: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(
        error: '예약 생성 오류: $e',
        isCreating: false,
      );
      rethrow;
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

class ReservationState {
  final bool isLoading;
  final bool isLoadingDetail;
  final bool isCreating;
  final List<ReadReservationResponse> reservations;
  final ReadReservationDetailResponse? reservationDetail;
  final String? error;

  const ReservationState({
    this.isLoading = false,
    this.isLoadingDetail = false,
    this.isCreating = false,
    this.reservations = const [],
    this.reservationDetail,
    this.error,
  });

  ReservationState copyWith({
    bool? isLoading,
    bool? isLoadingDetail,
    bool? isCreating,
    List<ReadReservationResponse>? reservations,
    ReadReservationDetailResponse? reservationDetail,
    String? error,
  }) {
    return ReservationState(
      isLoading: isLoading ?? this.isLoading,
      isLoadingDetail: isLoadingDetail ?? this.isLoadingDetail,
      isCreating: isCreating ?? this.isCreating,
      reservations: reservations ?? this.reservations,
      reservationDetail: reservationDetail ?? this.reservationDetail,
      error: error,
    );
  }
}
