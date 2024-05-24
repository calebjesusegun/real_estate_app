import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_strings.dart';
import '../../../common/app_text_styles.dart';

class BuyOffersWidget extends StatefulWidget {
  const BuyOffersWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BuyOffersWidget> createState() {
    return _BuyOffersWidgetState();
  }
}

class _BuyOffersWidgetState extends State<BuyOffersWidget>
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
      end: 1034,
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
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primary01,
        ),
        padding: EdgeInsets.all(8.w),
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            Text(
              AppText.ksBuy,
              style: AppTextStyles.titleRegularSize16.copyWith(
                  fontSize: 14.sp,
                  height: 1.h,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white),
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
                              color: AppColors.white),
                        );
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    AppText.ksOffer,
                    style: AppTextStyles.titleRegularSize16.copyWith(
                        fontSize: 14.sp,
                        height: 1.h,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white),
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
