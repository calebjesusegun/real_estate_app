import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_strings.dart';
import '../../../common/app_text_styles.dart';

class RentOffersWidget extends StatefulWidget {
  const RentOffersWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RentOffersWidget> createState() {
    return _RentOffersWidgetState();
  }
}

class _RentOffersWidgetState extends State<RentOffersWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<int> _animation2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _animation2 = IntTween(
      begin: 0,
      end: 2212,
    ).animate(_controller);

    /// Start the animation after a delay
    Future.delayed(const Duration(seconds: 5), () {
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
      child: Container(
        height: 170.h,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(24.r),
          color: AppColors.white,
        ),
        padding: EdgeInsets.all(8.w),
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            Text(
              AppText.ksRent,
              style: AppTextStyles.titleRegularSize16.copyWith(
                  fontSize: 14.sp,
                  height: 1.h,
                  fontWeight: FontWeight.w500,
                  color: AppColors.locationIconColor),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedBuilder(
                      animation: _animation2,
                      builder: (context, child) {
                        return Text(
                          _animation2.value.toString(),
                          style: AppTextStyles.titleRegularSize16.copyWith(
                              fontSize: 40.sp,
                              height: 1.h,
                              fontWeight: FontWeight.w600,
                              color: AppColors.locationIconColor),
                        );
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    AppText.ksOffers,
                    style: AppTextStyles.titleRegularSize16.copyWith(
                        fontSize: 14.sp,
                        height: 1.h,
                        fontWeight: FontWeight.w500,
                        color: AppColors.locationIconColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
