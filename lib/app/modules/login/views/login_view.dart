import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/core/widgets/input_widgets/password_input_field_single.dart';
import 'package:shafa_code/app/core/widgets/input_widgets/simple_input_field.dart';
import '../../../core/theme/app_assets.dart';
import '../../../core/widgets/buttons/rouded_action_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';
import '../widgets/bird_image.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.bgAuth,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///========================== Bird Image ===========================
            BirdImage(),

            ///========================== Toggle button ===========================
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundedActionButton(onClick: controller.selectSignup, label: 'Sign Up', isSelected: !controller.isLoginSelected.value),
                  RoundedActionButton(onClick: controller.selectLogin, label: 'Log In', isSelected: controller.isLoginSelected.value),
                ],
              ),
            ),

            SizedBox(height: 40),

            ///========================== Input section ===========================
            Obx(
              () => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: controller.isLoginSelected.value
                    ? Form(
                        key: controller.loginFormKey,
                        child: Column(
                          children: [
                            SimpleInputField(
                              controller: controller.emailController,
                              hintText: 'Enter your email address',
                              errorMessage: 'Please enter a valid email',
                              fieldTitle: '',
                            ),
                            SizedBox(height: 15),
                            PasswordInputFieldSingle(hintText: 'Enter Password', fieldTitle: '', password: controller.passwordController),
                          ],
                        ),
                      )
                    : Form(
                        key: controller.regFromKey,
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            SimpleInputField(
                              controller: controller.userNameController,
                              hintText: 'Enter your username',
                              errorMessage: 'Please enter a username',
                              fieldTitle: '',
                            ),
                            SizedBox(height: 15),
                            SimpleInputField(
                              controller: controller.regEmailController,
                              hintText: 'Enter your email address',
                              errorMessage: 'Please enter a valid email',
                              fieldTitle: '',
                            ),
                            SizedBox(height: 15),
                            PasswordInputFieldSingle(
                              hintText: 'Enter Password',
                              fieldTitle: '',
                              password: controller.regPasswordController,
                            ),
                            SizedBox(height: 15),
                            PasswordInputFieldSingle(
                              hintText: 'Confirm Password',
                              fieldTitle: '',
                              password: controller.confirmPasswordController,

                            ),
                          ],
                        ),
                      ),
              ),
            ),

            SizedBox(height: 40),

            ///========================== Next button ===========================
            SizedBox(
              width: 80,
              child: RoundedActionButton(
                onClick: () {
                  Get.offAllNamed(Routes.NAVBAR);
                },
                label: 'Next',
              ),
            ),
          ],
        ),
      ),

      ///========================== Bottom image ===========================
      bottomNavigationBar: Opacity(opacity: 0.9, child: Image.asset(AppAssets.bgImage, fit: BoxFit.cover, height: 220)),
    );
  }
}
