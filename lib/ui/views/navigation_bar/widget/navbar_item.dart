import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_colors.dart';
import '../../../models/navbar_data.dart';

class NavBarItem extends StatefulWidget {
  final NavBarData data;
  final bool isSelected;

  const NavBarItem({
    super.key,
    required this.data,
    required this.isSelected,
  });

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> sizeAnimation;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350));

    sizeAnimation = Tween<double>(
      begin: 0,
      end: widget.isSelected ? 48 : 26,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    colorAnimation = ColorTween(
      begin: widget.isSelected ? Colors.black : Colors.white,
      end: widget.isSelected ? Colors.white : Colors.black,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    if (widget.isSelected) {
      _controller.forward();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      height: 52,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: sizeAnimation.value,
              width: sizeAnimation.value,
              decoration: widget.isSelected
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.primary01,
                    )
                  : null,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: widget.isSelected
                  ? null
                  : EdgeInsets.all(
                      8.w,
                    ),
              decoration: widget.isSelected
                  ? null
                  : const BoxDecoration(
                      color: AppColors.black03,
                      shape: BoxShape.circle,
                    ),
              child: Icon(
                widget.data.icon,
                color: AppColors.white,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
