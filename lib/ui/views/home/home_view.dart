import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/ui/views/home/widget/buy_offers_widget.dart';
import 'package:real_estate_app/ui/views/home/widget/call_to_action_widget.dart';
import 'package:real_estate_app/ui/views/home/widget/dashboard_image.dart';
import 'package:real_estate_app/ui/views/home/widget/location_widget.dart';
import 'package:real_estate_app/ui/views/home/widget/navigation_bar_widget.dart';
import 'package:real_estate_app/ui/views/home/widget/profile_image_widget.dart';
import 'package:real_estate_app/ui/views/home/widget/rent_offers_widget.dart';
import 'package:real_estate_app/ui/views/home/widget/username_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:real_estate_app/ui/common/app_colors.dart';
import 'package:real_estate_app/ui/common/ui_helpers.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: AppColors.dashboardBackgroundColor,
        ),
      ),
      backgroundColor: AppColors.dashboardBackgroundColor2,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            /// Dashboard UI View
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.dashboardBackgroundColor,
                        AppColors.dashboardBackgroundColor2,
                      ], begin: Alignment.center, end: Alignment.bottomCenter),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sidePadding, vertical: sidePadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              /// Location Widget
                              LocationWidget(),

                              /// Profile Image Widget
                              ProfileImageWidget(),
                            ],
                          ),
                          SizedBox(
                            height: 32.h,
                          ),

                          /// Username Widget
                          const UsernameWidget(),

                          /// Call To Action Widget
                          const CallToActionWidget(),

                          SizedBox(
                            height: 32.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              /// Buy Offers Widget
                              const Expanded(
                                child: BuyOffersWidget(),
                              ),

                              SizedBox(
                                width: 12.w,
                              ),

                              /// Rent Offers Widget
                              const Expanded(
                                child: RentOffersWidget(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Dashboard Image Widget
                  const DashboardImageWidget(),
                ],
              ),
            ),

            /// Navigation Bar Widget
            NavigationBarWidget(onItemChanged: (int index) =>
                viewModel.updateCurrentIndex(index),),
          ],
        ),
      ),
      // bottomNavigationBar: null,
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
