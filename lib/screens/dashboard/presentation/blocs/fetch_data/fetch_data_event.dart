part of 'fetch_data_bloc.dart';

abstract class FetchDataEvent extends Equatable {}

class RefreshBusEvent extends FetchDataEvent {
  @override
  List<Object?> get props => [];
}
