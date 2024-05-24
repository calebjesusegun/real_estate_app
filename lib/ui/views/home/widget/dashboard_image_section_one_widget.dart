import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_images.dart';
import '../../../common/app_strings.dart';
import '../../../common/app_text_styles.dart';

class DashboardImageSectionOneWidget extends StatefulWidget {
  const DashboardImageSectionOneWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardImageSectionOneWidget> createState() {
    return _DashboardImageSectionOneWidgetState();
  }
}

class _DashboardImageSectionOneWidgetState
    extends State<DashboardImageSectionOneWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    Future.delayed(const Duration(seconds: 7), () {
      _controller!.forward();
    });
    _delayDisplay();
  }

  bool _isVisible = false;

  void _delayDisplay() async {
    await Future.delayed(
      const Duration(seconds: 8),
    );
    setState(() {
      _isVisible = true;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(28.r),
          child: Image.asset(
            AppImages.dashboardImage2,
            width: double.infinity,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.0.w,
            right: 12.0.w,
            bottom: 12.0.h,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(28.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.gradientColor.withOpacity(0.6),
                    ),
                    height: 50.h,
                    alignment: Alignment.center,
                    child: AnimatedOpacity(
                      opacity: _isVisible ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      child: Text(
                        AppText.ksAddress1,
                        style: AppTextStyles.titleRegularSize16.copyWith(
                            fontSize: 17.sp,
                            height: 1.h,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black01),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: _controller!,
                builder: (context, child) {
                  return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0),
                        end: const Offset(6.9, 0),
                      ).animate(
                        CurvedAnimation(
                            curve:
                                const Interval(.03, 0.3, curve: Curves.easeIn),
                            parent: _controller!),
                      ),
                      child: child);
                },
                child: Container(
                  padding: EdgeInsets.only(
                    left: 2.0.w,
                    right: 2.0.w,
                  ),
                  decoration: const BoxDecoration(
                      color: AppColors.white, shape: BoxShape.circle),
                  height: 44.h,
                  width: 44.w,
                  child: Icon(
                    Iconsax.arrow_right_3_copy,
                    color: AppColors.locationIconColor,
                    size: 16.w,
                    weight: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
