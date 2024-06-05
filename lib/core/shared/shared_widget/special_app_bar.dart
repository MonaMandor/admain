// core/shared/shared_widget/special_app_bar.dart

// ignore_for_file: prefer_const_constructors
import 'package:admain/core/constansts/asset_manger.dart';
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:flutter/material.dart';


class SpecialAppBar extends StatelessWidget {
  final String title;

  const SpecialAppBar({super.key, required this.title, 
  
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.propHeight(60),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (() {
              //back
              Navigator.of(context).pop();
            }),
            child: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: Color(0xFFF7F9FA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Image.asset(
                AssetManger.arrowLeft,
                width: 24,
                height: 24,
              ),
            ),
          ),
          SizedBox(
            width: context.propWidth(80),
          ),
          Text(title,
               style: AppTheme(context).theme.textTheme.labelMedium?.copyWith(
                        color: AppColors.primaryTextColor,)
          
          )
        ],
      ),
    );
  }
}
