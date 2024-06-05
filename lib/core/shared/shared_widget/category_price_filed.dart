// core/shared/shared_widget/category_price_filed.dart

// core/shared/shared_widget/custom_category_filed.dart
import 'package:admain/core/constansts/asset_manger.dart';
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/customTextFormFiled.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCategoryPriceField  extends StatelessWidget {
  final TextEditingController controller;
  final String titel ;
 
  const CustomCategoryPriceField ({super.key, 
    required this.controller, required this.titel,
    
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         titel,
         style: AppTheme(context).theme.textTheme.titleMedium,
        ),
        SizedBox(height: context.propHeight(18)),
        CustomTextField(
          obscureText: false,

          
          suffix: Image.asset(
            AssetManger.idIcon,
            color: AppColors.primaryColor,
           
          ),
          
         // height: context.propHeight(52),
          fillColor: const Color(0xFFF7F9FA),
    
          controller: controller,
          keyboardType: TextInputType.number,
          
         validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter category price';
            }
            return null;
          },
        hintText:     'Enter category price',
          hintStyle: AppTheme(context).theme.inputDecorationTheme.hintStyle,
        ),
      ],
    );
  }
}
