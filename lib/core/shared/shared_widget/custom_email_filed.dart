// core/shared/shared_widget/custom_email_filed.dart
import 'package:admain/core/constansts/asset_manger.dart';
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/customTextFormFiled.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:flutter/material.dart';


class CustomEmailField extends StatelessWidget {
  final TextEditingController controller;

 
 

  const CustomEmailField({super.key, 
    required this.controller,
    
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
           'E-mail address',
          style: AppTheme(context).theme.textTheme.titleMedium,
        ),
        SizedBox(height: context.propHeight(18)),
        CustomTextField(
          suffix: Image.asset(AssetManger.email,
             ),
         
          fillColor: const Color(0xFFF7F9FA),
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return 'please enter your email address';
            }
            return null;
          },
          hintText: 'Enter your email address',
          hintStyle: AppTheme(context).theme.inputDecorationTheme.hintStyle,
          obscureText: false,
        ),
      ],
    );
 }
}
