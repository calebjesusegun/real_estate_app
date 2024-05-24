import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_colors.dart';
import 'dashboard_image_section_one_widget.dart';
import 'dashboard_image_section_two_widget.dart';

class DashboardImageWidget extends StatefulWidget {
  const DashboardImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardImageWidget> createState() {
    return _DashboardImageWidgetState();
  }
}

class _DashboardImageWidgetState extends State<DashboardImageWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    Future.delayed(const Duration(seconds: 6), () {
      _controller!.forward();
    });
    _delayDisplay();
  }

  void _delayDisplay() async {
    await Future.delayed(
      const Duration(seconds: 7),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller!,
      builder: (context, child) {
        return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: const Offset(0, 0),
            ).animate(CurvedAnimation(
                curve: const Interval(.08, 0.3, curve: Curves.easeIn),
                parent: _controller!)),
            child: child);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.r),
              bottomRight: Radius.circular(0.r),
              topLeft: Radius.circular(32.r),
              topRight: Radius.circular(32.r)),
        ),
        padding: EdgeInsets.all(8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Dashboard Image Section One
            const DashboardImageSectionOneWidget(),
            SizedBox(
              height: 8.h,
            ),

            /// Dashboard Image Section Two
            const DashboardImageSectionTwoWidget(),
          ],
        ),
      ),
    );
  }
}
