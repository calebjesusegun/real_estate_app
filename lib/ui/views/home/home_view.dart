import 'package:flutter/material.dart';
import 'package:real_estate_app/ui/views/home/widget/navigation_bar_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:real_estate_app/ui/common/app_colors.dart';
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
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: AppColors.dashboardBackgroundColor,
        ),
      ),
      backgroundColor: AppColors.dashboardBackgroundColor2,
      body: Center(
        child: viewModel.getViewForIndex(viewModel.currentNavBarIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      /// Navigation Bar Widget
      floatingActionButton: NavigationBarWidget(
        onItemChanged: (int index) => viewModel.updateCurrentIndex(index),
      ),

    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
