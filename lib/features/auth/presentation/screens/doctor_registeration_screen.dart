import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/styles/app_colors.dart';
import 'package:se7ety/core/styles/text_styles.dart';
import 'package:se7ety/core/widgets/app_button.dart';
import 'package:se7ety/core/widgets/custom_text_form_field.dart';
import 'package:se7ety/features/auth/presentation/widgets/profile_pic_section.dart';
import 'package:se7ety/features/auth/presentation/widgets/working_hours_section.dart';

class DoctorRegisterationScreen extends StatefulWidget {
  const DoctorRegisterationScreen({super.key});

  @override
  State<DoctorRegisterationScreen> createState() =>
      _DoctorRegisterationScreenState();
}

class _DoctorRegisterationScreenState extends State<DoctorRegisterationScreen> {
  String? _imagePath;
  File? file;
  String? profileUrl;
  String? userID;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'إكمال عمليه التسجيل',
          style: TextStyles.w700s25.copyWith(color: AppColors.bgColor),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: ProfilePicSection()),
                Text("التخصص", style: TextStyles.w400s15),
                Gap(10),
                CustomTextFormField(),
                Gap(10),
                Text("نبذه تعريفيه", style: TextStyles.w400s15),
                Gap(10),
                CustomTextFormField(
                  maxLines: 5,
                  hintText: "اكتب نبذه تعريفيه عنك وعن خبراتك",
                ),
                Gap(10),
                Divider(),
                Gap(10),
                Text("عنوان العياده", style: TextStyles.w400s15),
                Gap(10),
                CustomTextFormField(hintText: "اكتب عنوان عيادتك"),
                Gap(10),
                WorkingHoursSection(),
                Gap(10),
                Text("رقم الهاتف", style: TextStyles.w400s15),
                Gap(10),
                CustomTextFormField(hintText: "+201xxxxxxxxx"),
                Gap(20),
                Text("رقم الهاتف 2 (اختياري)", style: TextStyles.w400s15),
                Gap(10),
                CustomTextFormField(hintText: "+201xxxxxxxxx"),
                Gap(20),
                AppButton(
                  text: "تسجيل",
                  onPressed: () {},
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
