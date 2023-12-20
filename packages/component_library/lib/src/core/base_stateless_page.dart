// import 'package:component_library/src/core/extensions/widget_extensions.dart';
// import 'package:component_library/src/core/resources/resources.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// abstract class BaseStatelessPage extends StatelessWidget {
//   const BaseStatelessPage({Key? key}) : super(key: key);
//
//   bool safeArea() {
//     return true;
//   }
//
//   bool? showAppBarDetails(BuildContext context) {
//     return false;
//   }
//
//   String? screenName(BuildContext context) {
//     return '';
//   }
//
//   bool resizeToAvoidBottomInset() {
//     return true;
//   }
//
//   bool drawerEnableOpenDragGesture() {
//     return false;
//   }
//
//   bool doubleBackToCloseApp() {
//     return false;
//   }
//
//   bool showCenterBackgroundImage() {
//     return false;
//   }
//
//   Widget _buildCenterWidgetAppBar(
//       BuildContext context,
//       String? value,
//       ) {
//     return ((value != null) && (value.isNotEmpty)) ?
//       value.toLabel(textStyle: Theme.of(context)
//           .textTheme
//           .titleLarge!.copyWith(color: AppTheme.colorGrey800)).center
//         : ImageManager.emdadKhodroLogo.imageWidget(width: MediaQuery.of(context).size.width * 0.45, boxFit: BoxFit.contain);
//   }
//
//   List<Widget>? buildCenterWidgetAppBar(BuildContext context){
//     return null;
//   }
//   PreferredSizeWidget? buildAppBar(
//       BuildContext context, bool showAppBarDetail, String screenName) {
//     return AppBar(
//       backgroundColor: AppTheme.darkThemeBackgroundLight,
//       centerTitle: true,
//       automaticallyImplyLeading: true,
//       leading: IconButton(
//         icon: const Icon(Icons.arrow_back),
//         onPressed: () => Navigator.of(context).pop(),
//       ),
//       title: _buildCenterWidgetAppBar(context, screenName),
//       actions: buildCenterWidgetAppBar(context) ??
//           [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: InkWell(
//                 onTap: (){
//                   Navigator.pushNamedAndRemoveUntil(context, MainRoutes.mainPage, (Route route) => false);
//                 },
//                 child: Container(
//                   height: 35,
//                   width: 35,
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: AppTheme.darkThemeSecondary,
//                   ),
//                   child: const Icon(
//                     Icons.home,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//     );
//   }
//
//   Widget? buildFloatingActionButton(BuildContext context) {
//     return null;
//   }
//
//   FloatingActionButtonLocation floatingActionButtonLocation() {
//     return FloatingActionButtonLocation.centerDocked;
//   }
//
//   Color pageBackgroundColor() {
//     return Colors.white;
//   }
//
//   Color statusBarColor() {
//     return Colors.transparent;
//   }
//
//   Widget? bottomNavigationBar(BuildContext context) {
//     return null;
//   }
//
//   Widget body(BuildContext context);
//
//   Widget? buildDrawer(BuildContext context) {
//     return const DrawerWidget();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion(
//         value: SystemUiOverlayStyle(
//           //Status bar color for android
//           statusBarColor: statusBarColor(),
//           statusBarIconBrightness: Brightness.light,
//         ),
//         child:Scaffold(
//           backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//           appBar: showAppBarDetails(context) != false
//               ? buildAppBar(
//               context, showAppBarDetails(context)!, screenName(context)!)
//               : null,
//           body: Stack(
//             children: [
//               if(showCenterBackgroundImage())
//                 Center(
//                   child: Opacity(
//                       opacity: 0.4,
//                       child: Image.asset(
//                         ImageManager.emdadKhodroLogoSingle,
//                         width: MediaQuery.of(context).size.width * 0.80,
//                       )),
//                 ),
//               _pageContent(context),
//             ],
//           ),
//           bottomNavigationBar: bottomNavigationBar(context),
//           resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
//           drawer: buildDrawer(context),
//           drawerEnableOpenDragGesture: drawerEnableOpenDragGesture(),
//           floatingActionButton: buildFloatingActionButton(context),
//           floatingActionButtonLocation: floatingActionButtonLocation(),
//         )
//     );
//   }
//
//   Widget _pageContent(BuildContext context) {
//     return safeArea()
//         ? SafeArea(
//       child: _doubleBackToCloseApp(context),
//     )
//         : _doubleBackToCloseApp(context);
//   }
//
//   Widget _doubleBackToCloseApp(BuildContext context) {
//     return doubleBackToCloseApp()
//         ? DoubleBackToCloseApp(
//       snackBar: const SnackBar(
//         content: Text('Tap back again to leave'),
//       ),
//       child: body(context),
//     )
//         : body(context);
//   }
//
//   void _onBackButtonTapped(BuildContext context) {
//     Navigator.pop(context);
//   }
// }
