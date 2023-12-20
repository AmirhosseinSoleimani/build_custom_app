import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navigation_state.dart';
part 'bottom_navigation_event.dart';
class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationState(0));

  void itemTapped(int index) {
    emit(BottomNavigationState(index));
  }
}