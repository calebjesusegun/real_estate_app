import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_images.dart';

class ProfileImageWidget extends StatefulWidget {
  const ProfileImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileImageWidget> createState() {
    return _ProfileImageWidgetState();
  }
}

class _ProfileImageWidgetState extends State<ProfileImageWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    /// Start the animation after a delay
    Future.delayed(const Duration(seconds: 1), () {
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
      child: CircleAvatar(
        radius: 24.w,
          backgroundImage: AssetImage(
            AppImages.profilePicture,
          ),
      ),
    );
  }
}
