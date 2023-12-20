import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:build_custom_app/bottom_navigation/model_view/bottom_navigation_cubit.dart';

import '../l10n/string_manager.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({Key? key,required this.child}) : super(key: key);
  final StatefulNavigationShell child;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavigationCubit(),
      child: BlocConsumer<BottomNavigationCubit, BottomNavigationState>(
        listener: (context, state) {
          // Handle state changes
        },
        builder: (context, state) {
          return Theme(
            data: EmdadgarTheme.of(context).materialMainRoutesThemeData,
            child: Scaffold(
              appBar: customAppBar(context: context),
              body: child,
              bottomNavigationBar: Theme(
                data: EmdadgarTheme.of(context).materialMainRoutesThemeData,
                child: BottomNavigationBar(
                  currentIndex: state.selectedIndex,
                  onTap: (index) {
                    context.read<BottomNavigationCubit>().itemTapped(index);
                    child.goBranch(
                      index,
                      initialLocation: index == child.currentIndex,
                    );
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(IconManager.home),
                      label: StringManager.home,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(IconManager.subscription),
                      label: StringManager.subscription,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(IconManager.relief),
                      label: StringManager.relief,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

