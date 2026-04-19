import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/constants/app_images.dart';
import 'package:se7ety/core/functions/navigations.dart';
import 'package:se7ety/core/routes/routes.dart';
import 'package:se7ety/core/styles/app_colors.dart';
import 'package:se7ety/core/styles/text_styles.dart';
import 'package:se7ety/core/widgets/app_button.dart';
import 'package:se7ety/core/widgets/custom_text_form_field.dart';
import 'package:se7ety/core/widgets/password_text_form_field.dart';
import 'package:se7ety/features/auth/widgets/auth_footer.dart';

class RigesterScreen extends StatelessWidget {
  const RigesterScreen({super.key, required this.user});
  final String user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            pushAndClearStack(AppRoutes.welcome, context);
          },
          icon: SvgPicture.asset(AppImages.backIconSvg, height: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(AppImages.logo, height: 250),
              Gap(20),
              Text(
                "أنشئ حساب الآن كـ \"$user\"",
                style: TextStyles.w700s25.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),

              Gap(20),
              CustomTextFormField(
                hintText: "اسم المستخدم",
                prefixIcon: const Icon(
                  Icons.person,
                  color: AppColors.primaryColor,
                ),
              ),
              Gap(20),
              CustomTextFormField(
                hintText: "Mina@example.com",
                prefixIcon: const Icon(
                  Icons.email,
                  color: AppColors.primaryColor,
                ),
              ),
              Gap(20),
              PasswordTextFormField(hint: "***********"),
              Gap(20),
              AppButton(
                text: "تسجيل حساب جديد",
                onPressed: () {},
                width: double.infinity,
                borderRadius: 20,
                height: 60,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AuthFooter(
        text: "لديك حساب؟",
        textButton: "سجل دخول",
        onPressed: () {
          pushTo(AppRoutes.login, context, extra: user);
        },
      ),
    );
  }
}
