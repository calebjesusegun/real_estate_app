import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import 'custom_search_text_field.dart';

class SearchViewHeader extends StatefulWidget {
  const SearchViewHeader({
    super.key,
  });

  @override
  State<SearchViewHeader> createState() => _SearchViewHeaderState();
}

class _SearchViewHeaderState extends State<SearchViewHeader>
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
      child: Padding(
        padding:
            EdgeInsets.only(left: sidePadding, right: sidePadding, top: 20.0.h),
        child: Row(
          children: [
            Expanded(
              child: CustomSearchTextField(
                controller: TextEditingController(),
                focusNode: FocusNode(),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Iconsax.candle_2_copy,
                color: AppColors.black01,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
