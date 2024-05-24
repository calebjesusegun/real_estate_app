import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_strings.dart';
import '../../../common/app_text_styles.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LocationWidget> createState() {
    return _LocationWidgetState();
  }
}

class _LocationWidgetState extends State<LocationWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? transitionAnimation;
  @override
  void initState() {
    super.initState();
    transitionAnimation = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    transitionAnimation!.forward();
    _delayDisplay();
  }

  bool _isVisible = false;

  void _delayDisplay() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    setState(() {
      _isVisible = true;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    transitionAnimation!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: transitionAnimation!,
      builder: (context, child) {
        return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: const Offset(0, 0),
            ).animate(CurvedAnimation(
                curve: const Interval(.08, 0.3, curve: Curves.easeIn),
                parent: transitionAnimation!)),
            child: child);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: AppColors.white,
        ),
        padding: EdgeInsets.all(16.w),
        width: 180.w,
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: Row(
            children: [
              Icon(
                Iconsax.location,
                size: 24.sp,
                color: AppColors.locationIconColor,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                AppText.ksAddress2,
                style: AppTextStyles.titleRegularSize16.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.locationIconColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
