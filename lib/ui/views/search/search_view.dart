import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:real_estate_app/ui/views/search/widget/custom_circle_popup_menu_icon.dart';
import 'package:real_estate_app/ui/views/search/widget/custom_location_marker.dart';
import 'package:real_estate_app/ui/views/search/widget/custom_rectangle_popup_menu_icon.dart';
import 'package:real_estate_app/ui/views/search/widget/search_view_header.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../common/app_strings.dart';
import '../../common/app_text_styles.dart';
import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: AppColors.transparent,
        ),
      ),
      body: Stack(
        children: [
          /// Google Map UI View
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(59.9311, 30.3609),
              zoom: 10,
            ),
            myLocationButtonEnabled: false,
            onMapCreated: viewModel.onMapCreated,
            markers: viewModel.markers,
          ),

          if (viewModel.isMapCreated) ...[
            /// Search View Header
            const SearchViewHeader(),

            /// Location Markers displayed on the Left Side
            Positioned(
              top: 120.h,
              left: 75.w,
              child: CustomLocationMarker(
                location: AppText.ksLocation1,
                isPriceSelected: viewModel.isPriceSelected,
              ),
            ),
            Positioned(
              top: 206.h,
              left: 100.w,
              child: CustomLocationMarker(
                location: AppText.ksLocation2,
                isPriceSelected: viewModel.isPriceSelected,
              ),
            ),
            Positioned(
              top: 390.h,
              left: 45.w,
              // alignment: Alignment.center,
              child: CustomLocationMarker(
                location: AppText.ksLocation3,
                isPriceSelected: viewModel.isPriceSelected,
              ),
            ),

            /// Location Markers displayed on the Right Side
            Positioned(
              top: 240.h,
              right: 50.w,
              child: CustomLocationMarker(
                location: AppText.ksLocation4,
                isPriceSelected: viewModel.isPriceSelected,
              ),
            ),
            Positioned(
              top: 360.h,
              right: 50.w,
              child: CustomLocationMarker(
                location: AppText.ksLocation1,
                isPriceSelected: viewModel.isPriceSelected,
              ),
            ),
            Positioned(
              top: 480.h,
              right: 100.w,
              child: CustomLocationMarker(
                location: AppText.ksLocation2,
                isPriceSelected: viewModel.isPriceSelected,
              ),
            ),

            /// Popup Menu Icons Left Side
            Positioned(
              top: 526.h,
              left: 20.w,
              child: CustomCirclePopupMenuIcon(
                onTap: () async {
                  /// PopUpMenuButton
                  await showMenu(
                    color: AppColors.dropdownBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    popUpAnimationStyle: AnimationStyle(
                      curve: Curves.linear,
                      duration: const Duration(milliseconds: 800),
                    ),
                    context: context,
                    position: RelativeRect.fromLTRB(0, 444.h, 30.w, 0),
                    items: [
                      PopupMenuItem(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8.w,
                            ),
                            const Icon(
                              Iconsax.shield_tick_copy,
                              color: AppColors.dropdownTextColor,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              AppText.ksCosyAreas,
                              style: AppTextStyles.titleRegularSize16.copyWith(
                                  fontSize: 16.sp,
                                  height: 1.h,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.dropdownTextColor),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => viewModel.updatePrice(),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8.w,
                            ),
                            const Icon(
                              Iconsax.empty_wallet_copy,
                              color: AppColors.primary01,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              AppText.ksPrice,
                              style: AppTextStyles.titleRegularSize16.copyWith(
                                  fontSize: 16.sp,
                                  height: 1.h,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primary01),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8.w,
                            ),
                            const Icon(
                              Iconsax.bag_copy,
                              color: AppColors.dropdownTextColor,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              AppText.ksInfrastructure,
                              style: AppTextStyles.titleRegularSize16.copyWith(
                                  fontSize: 16.sp,
                                  height: 1.h,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.dropdownTextColor),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => viewModel.updatePrice(),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8.w,
                            ),
                            const Icon(
                              Iconsax.layer_copy,
                              color: AppColors.dropdownTextColor,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              AppText.ksWithoutLayer,
                              style: AppTextStyles.titleRegularSize16.copyWith(
                                  fontSize: 16.sp,
                                  height: 1.h,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.dropdownTextColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                icon: Iconsax.layer_copy,
              ),
            ),
            Positioned(
              top: 636.h,
              left: 7.w,
              child: Transform(
                transform: Matrix4.rotationZ(-0.8),
                child: CustomCirclePopupMenuIcon(
                  onTap: () {},
                  icon: Iconsax.direct_right_copy,
                ),
              ),
            ),

            /// Popup Menu Icons Right Side
            Positioned(
              top: 600.h,
              right: 35.w,
              child: CustomRectanglePopupMenuIcon(
                onTap: () {},
                icon: Iconsax.textalign_left,
              ),
            ),
          ]
        ],
      ),
    );
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
