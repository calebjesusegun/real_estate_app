import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/app_strings.dart';
import '../../common/app_text_styles.dart';
import 'message_viewmodel.dart';

class MessageView extends StackedView<MessageViewModel> {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MessageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Text(
          AppText.ksMessage,
          style: AppTextStyles.titleRegularSize16.copyWith(
              fontSize: 16.sp,
              height: 1.h,
              fontWeight: FontWeight.w600,
              color: AppColors.black01),
        ),
      ),
    );
  }

  @override
  MessageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MessageViewModel();
}
