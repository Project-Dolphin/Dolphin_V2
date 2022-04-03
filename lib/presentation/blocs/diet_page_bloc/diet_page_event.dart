part of 'diet_page_bloc.dart';

abstract class DietPageEvent extends Equatable {}

class DietPageInited extends DietPageEvent {
  @override
  List<Object?> get props => [];
}

class DietTabSelected extends DietPageEvent {
  DietTabSelected({required this.selectedTab});
  final DietTab selectedTab;
  @override
  List<Object?> get props => [];
}
