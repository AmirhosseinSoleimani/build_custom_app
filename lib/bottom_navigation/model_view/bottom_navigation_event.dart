
part of 'bottom_navigation_cubit.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}


class BottomNavigationItemTapped extends BottomNavigationEvent {
  final int selectedIndex;

  const BottomNavigationItemTapped(this.selectedIndex);

  @override
  List<Object> get props => [selectedIndex];
}