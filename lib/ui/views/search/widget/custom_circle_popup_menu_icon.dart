import 'package:flutter/material.dart';
import '../../../common/app_colors.dart';

class CustomCirclePopupMenuIcon extends StatefulWidget {
  const CustomCirclePopupMenuIcon({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final IconData icon;

  @override
  State<CustomCirclePopupMenuIcon> createState() =>
      _CustomCirclePopupMenuIconState();
}

class _CustomCirclePopupMenuIconState extends State<CustomCirclePopupMenuIcon>
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
          decoration: const BoxDecoration(
            color: AppColors.locationPopupMenuIconColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            widget.icon,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
