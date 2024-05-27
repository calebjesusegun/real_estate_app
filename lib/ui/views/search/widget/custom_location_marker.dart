import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_text_styles.dart';

class CustomLocationMarker extends StatefulWidget {
  const CustomLocationMarker({
    super.key,
    required this.location,
    required this.isPriceSelected,
  });

  final String location;
  final bool isPriceSelected;

  @override
  State<CustomLocationMarker> createState() => _CustomLocationMarkerState();
}

class _CustomLocationMarkerState extends State<CustomLocationMarker>
    with TickerProviderStateMixin {
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
    Future.delayed(const Duration(milliseconds: 3500), () {
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
      alignment: Alignment.bottomLeft,
      scale: _animation,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        padding: EdgeInsets.symmetric(
            vertical: 20.h, horizontal: (widget.isPriceSelected) ? 14.w : 20.w),
        decoration: BoxDecoration(
          color: AppColors.primary01,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18.r),
            topLeft: Radius.circular(18.r),
            bottomRight: Radius.circular(18.r),
          ),
        ),
        child: Builder(builder: (context) {
          if (widget.isPriceSelected) {
            return ScaleTransition(
              alignment: Alignment.centerLeft,
              scale: _animation,
              child: const Icon(
                Iconsax.buliding,
                color: AppColors.white,
              ),
            );
          }
          return ScaleTransition(
            alignment: Alignment.centerLeft,
            scale: _animation,
            child: Text(
              widget.location,
              style: AppTextStyles.titleRegularSize16.copyWith(
                  fontSize: 12.sp,
                  height: 1.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white),
            ),
          );
        }),
      ),
    );
  }
}
