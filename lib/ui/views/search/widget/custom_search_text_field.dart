import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:real_estate_app/ui/common/app_text_styles.dart';
import '../../../common/app_colors.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    required this.controller,
    required this.focusNode,
    super.key,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: TextFormField(
        style: AppTextStyles.titleRegularSize16
            .copyWith(color: AppColors.black01, fontWeight: FontWeight.w500),
        controller: controller,
        focusNode: focusNode,
        cursorColor: AppColors.primary01,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0.r),
            ),
            borderSide: const BorderSide(
              width: 0,
              color: AppColors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0.r),
            ),
            borderSide: const BorderSide(
              width: 0,
              color: AppColors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0.r),
            ),
            borderSide: const BorderSide(
              width: 0,
              color: AppColors.white,
            ),
          ),
          fillColor: AppColors.white,
          filled: true,
          hintText: "Saint Petersburg",
          hintStyle: AppTextStyles.titleRegularSize16
              .copyWith(fontSize: 16, color: AppColors.black02),
          prefixIcon: Padding(
            padding:  EdgeInsets.only(left: 20.0.w, right: 10.0.w),
            child:  const Icon(Iconsax.search_normal_1_copy),
          ),
          prefixIconColor: AppColors.black01,
        ),
      ),
    );
  }
}
