import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/app/app.bottomsheets.dart';
import 'package:real_estate_app/app/app.dialogs.dart';
import 'package:real_estate_app/app/app.locator.dart';
import 'package:real_estate_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        splitScreenMode: true,
        ensureScreenSize: true,
        builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Real Estate App',
          theme: ThemeData(
            fontFamily:'Euclid Circular A',
          ),
          initialRoute: Routes.startupView,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,
          navigatorObservers: [
            StackedService.routeObserver,
          ],
        );
      }
    );
  }
}
