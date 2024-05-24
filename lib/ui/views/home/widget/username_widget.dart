import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_strings.dart';
import '../../../common/app_text_styles.dart';

class UsernameWidget extends StatefulWidget {
  const UsernameWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<UsernameWidget> createState() {
    return _UsernameWidgetState();
  }
}

class _UsernameWidgetState extends State<UsernameWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _delayDisplay();
  }

  bool _isVisible = false;

  void _delayDisplay() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    setState(() {
      _isVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: const Duration(seconds: 1),
      child: Text(
        AppText.ksUsername,
        style: AppTextStyles.titleRegularSize16.copyWith(
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.locationIconColor),
      ),
    );
  }
}
