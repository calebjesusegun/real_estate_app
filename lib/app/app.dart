import 'package:real_estate_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:real_estate_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:real_estate_app/ui/views/home/home_view.dart';
import 'package:real_estate_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:real_estate_app/ui/views/navigation_bar/navigation_bar_view.dart';
import 'package:real_estate_app/ui/views/dashboard/dashboard_view.dart';
import 'package:real_estate_app/ui/views/search/search_view.dart';
import 'package:real_estate_app/ui/views/favourites/favourites_view.dart';
import 'package:real_estate_app/ui/views/message/message_view.dart';
import 'package:real_estate_app/ui/views/profile/profile_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: StartupView),
    AdaptiveRoute(page: NavigationBarView),
    AdaptiveRoute(page: DashboardView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: FavouritesView),
    MaterialRoute(page: MessageView),
    MaterialRoute(page: ProfileView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
