
part of 'bottom_navigation_cubit.dart';
class BottomNavigationState extends Equatable {
  final int selectedIndex;

  const BottomNavigationState(this.selectedIndex);

  @override
  List<Object> get props => [selectedIndex];
}