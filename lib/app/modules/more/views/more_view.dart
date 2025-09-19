import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/core/theme/text_config.dart';

import '../controllers/more_controller.dart';

class MoreView extends GetView<MoreController> {
  const MoreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,
      body:  Center(
        child: Text(
          'MoreView',
          style: AppText().bodyMedium.copyWith(color: AppColor.bgAuth,fontSize: 35),
        ),
      ),
    );
  }
}
