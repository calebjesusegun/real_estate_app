import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_colors.dart';
import '../../../common/app_strings.dart';
import '../../../common/app_text_styles.dart';

class CustomRectanglePopupMenuIcon extends StatefulWidget {
  const CustomRectanglePopupMenuIcon({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final IconData icon;

  @override
  State<CustomRectanglePopupMenuIcon> createState() =>
      _CustomRectanglePopupMenuIconState();
}

class _CustomRectanglePopupMenuIconState
    extends State<CustomRectanglePopupMenuIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    /// Start the animation after a delay
    Future.delayed(const Duration(milliseconds: 1500), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.locationPopupMenuIconColor,
            borderRadius: BorderRadius.circular(34.r),
          ),
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: AppColors.white,
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                AppText.ksListOfVariants,
                style: AppTextStyles.titleRegularSize16.copyWith(
                    fontSize: 16.sp,
                    height: 1.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
