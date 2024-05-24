import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_strings.dart';
import '../../../common/app_text_styles.dart';

class CallToActionWidget extends StatefulWidget {
  const CallToActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CallToActionWidget> createState() {
    return _CallToActionWidgetState();
  }
}

class _CallToActionWidgetState extends State<CallToActionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<Offset> _animOffset;
  late Animation<Offset> _animOffset2;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _animController);
    _animOffset = Tween<Offset>(begin: const Offset(0.0, 0.1), end: Offset.zero)
        .animate(curve);

    _animOffset2 =
        Tween<Offset>(begin: const Offset(0.0, 0.3), end: Offset.zero)
            .animate(curve);

    Timer(const Duration(seconds: 4), () {
      _animController.forward();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animOffset,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeTransition(
            opacity: _animController,
            child: SlideTransition(
              position: _animOffset,
              child: Text(
                AppText.ksLetsSelect,
                style: AppTextStyles.titleRegularSize16.copyWith(
                    fontSize: 36.sp,
                    height: 1.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black01),
              ),
            ),
          ),
          FadeTransition(
            opacity: _animController,
            child: SlideTransition(
              position: _animOffset2,
              child: Text(
                AppText.ksPerfectPlace,
                style: AppTextStyles.titleRegularSize16.copyWith(
                    fontSize: 36.sp,
                    height: 1.h,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black01),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
