import 'package:flutter/material.dart';
import 'package:se7ety/core/styles/app_colors.dart';

class ProfilePicSection extends StatelessWidget {
  const ProfilePicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.borderColor,
          radius: 60,
          backgroundImage: null,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  size: 20,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
