//
// import 'package:flutter/material.dart';
// class ParsePoolNavigationNotification extends ChangeNotifier {
//   ParsePoolNavigationNotification(
//       Stream<NavigationState> navigationStateStream,
//       ) {
//     final mergeStream = MergeStream([
//       userRepository.getUser(),
//       navigationStateStream,
//       userRepository.isUserAuthenticatedStream
//     ]);
//
//     mergeStream.listen((event) {
//       //todo handle remove properly with first user event
//       if (event is User?) {
//         FlutterNativeSplash.remove();
//       }
//       notifyListeners();
//     });
//   }
// }
