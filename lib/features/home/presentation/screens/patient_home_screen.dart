import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:se7ety/core/constants/app_images.dart';
import 'package:se7ety/core/styles/app_colors.dart';
import 'package:se7ety/core/styles/text_styles.dart';
import 'package:se7ety/core/widgets/custom_text_form_field.dart';
import 'package:se7ety/features/home/presentation/widgets/specialty_card.dart';

class _Specialty {
  final String title;
  final String imagePath;
  final Color color;

  _Specialty({
    required this.title,
    required this.imagePath,
    required this.color,
  });
}

final List<_Specialty> _specialties = [
  _Specialty(title: "جراحة عامة", imagePath: AppImages.specialty1Svg, color: const Color(0xFF76B2F6)),
  _Specialty(title: "دكتور قلب", imagePath: AppImages.specialty1Svg, color: const Color(0xFF58D3C5)),
  _Specialty(title: "باطنة", imagePath: AppImages.specialty1Svg, color: const Color(0xFFF29B88)),
  _Specialty(title: "أسنان", imagePath: AppImages.specialty1Svg, color: const Color(0xFF76B2F6)),
  _Specialty(title: "أطفال", imagePath: AppImages.specialty1Svg, color: const Color(0xFF58D3C5)),
];

class PatientHomeScreen extends StatelessWidget {
  const PatientHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("صــحّـتـي", style: TextStyles.w700s25),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.notificationsIconSvg, height: 25),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("مرحبا,", style: TextStyles.w500s25),
                  const Gap(10),
                  Text(
                    "احجز الآن وكن جزءًا من رحلتك الصحية.",
                    style: TextStyles.w700s25,
                  ),
                  const Gap(20),
                  CustomTextFormField(
                    hintText: "ابحث عن طبيب أو تخصص",
                    prefixIcon: const Icon(Icons.search),
                  ),
                  const Gap(20),
                  Text(
                    "التخصصات",
                    style: TextStyles.w700s25.copyWith(color: AppColors.primaryColor),
                  ),
                  const Gap(20),
                ],
              ),
            ),
            SizedBox(
              height: 190,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                clipBehavior: Clip.none,
                itemCount: _specialties.length,
                separatorBuilder: (context, index) => const Gap(15),
                itemBuilder: (context, index) {
                  final specialty = _specialties[index];
                  return SpecialtyCard(
                    title: specialty.title,
                    imagePath: specialty.imagePath,
                    bgColor: specialty.color,
                  );
                },
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
