// core/shared/shared_widget/customTextFormFiled.dart

// ignore_for_file: prefer_const_constructors
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Color? fillColor;
  final double? height;
  final double? width;
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? errorMessage;
  final TextStyle? hintStyle;
  final bool? obscureText;
  final Widget? suffix;
   final Widget? prefix;



  const CustomTextField({
    super.key,
    this.fillColor,
    this.height,
    this.width,
    this.hintText,
    this.labelText,
    this.controller,
    this.keyboardType,
    this.validator,
    this.errorMessage,
    this.hintStyle,
  this.obscureText,
     this.suffix,
    this.prefix,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextFormField(
            keyboardType: keyboardType,
            controller: controller,
            validator: validator,
            obscureText: obscureText ?? false,
            style: AppTheme(context)
                .theme
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppColors.primaryTextColor),
            decoration: InputDecoration(
              errorStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
              fillColor:
                 Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: hintStyle,
              labelText: labelText,
           prefixIcon: suffix,
           suffixIcon: prefix,
             
              errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
                borderSide: const BorderSide(color: Colors.red, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                    width: 1.0,
                  )),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(
                  color:AppColors.primaryColor  ,
                  width: 1.0,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color:  Colors.red,
                  width: 1.0,
                ),
              ),
              contentPadding: EdgeInsets.only(
                bottom: context.propHeight(15),
               right: context.propWidth(20),
               
              ),
            ),
          ),
        ],
      ),
    );
  }
}
