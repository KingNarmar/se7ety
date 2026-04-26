import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/styles/app_colors.dart';
import 'package:se7ety/core/styles/text_styles.dart';
import 'package:se7ety/core/widgets/custom_text_form_field.dart';

class WorkingHoursSection extends StatelessWidget {
  const WorkingHoursSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ساعات العمل من", style: TextStyles.w400s15),
              Gap(10),
              CustomTextFormField(
                hintText: "10:00 AM",
                suffixIcon: Icon(
                  Icons.access_time,
                  color: AppColors.accentColor,
                ),
              ),
            ],
          ),
        ),
        Gap(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("الى", style: TextStyles.w400s15),
              Gap(10),
              CustomTextFormField(
                hintText: "05:00 PM",
                suffixIcon: Icon(
                  Icons.access_time,
                  color: AppColors.accentColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
