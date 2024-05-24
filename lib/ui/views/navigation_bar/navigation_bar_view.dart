import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/ui/views/navigation_bar/widget/navbar_item.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../models/navbar_data.dart';
import 'navigation_bar_viewmodel.dart';


class NavigationBarView extends StackedView<NavigationBarViewModel> {
  final Function(int newPosition) onItemChanged;
  final List<NavBarData> navBarItems;

  const NavigationBarView({
    super.key,
    required this.navBarItems,
    required this.onItemChanged,
  });

  @override
  Widget builder(
    BuildContext context,
    NavigationBarViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      margin: EdgeInsets.fromLTRB(32.w, 0, 32.w, 16.h),
      height: 64.h,
      padding: EdgeInsets.symmetric(horizontal: 4.w,),
      decoration: BoxDecoration(
        color: AppColors.black02,
        borderRadius: BorderRadius.circular(32.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...navBarItems
              .map((item) => GestureDetector(
                    onTap: () {
                      viewModel.updateIndex(navBarItems.indexOf(item));
                      onItemChanged(viewModel.selectedIndex);
                    },
                    child: NavBarItem(
                      key: UniqueKey(),
                      data: item,
                      isSelected:
                          navBarItems.indexOf(item) == viewModel.selectedIndex,
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }

  @override
  NavigationBarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavigationBarViewModel();
}
