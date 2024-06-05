// features/admain/presentation/widgets/image_Button.dart

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:admain/core/constansts/asset_manger.dart';
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/admain/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageButton extends StatelessWidget {
  final gallaryEvent;
  final cameraEvent;
  final File? imageFile;

  const ImageButton({
    required this.gallaryEvent,
    required this.cameraEvent,
    super.key,
    required this.imageFile,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Show dialog to choose from camera or gallery
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Center(
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.propWidth(20),
                    vertical: context.propHeight(10),
                  ),
                  width: context.propWidth(304),
                  height: context.propHeight(272),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        InkWell(
                          onTap: () {
                            //pop
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: context.propWidth(40),
                            height: context.propWidth(40),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x0C000000),
                                  blurRadius: 10,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'X',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF0C0C0C),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: context.propHeight(15),
                      ),
                      Text(
                        'Make a selection',
                        style: AppTheme(context)
                            .theme
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                              color: AppColors.primaryTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        'Select an option to specify a source',
                        style: AppTheme(context)
                            .theme
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                              color: AppColors.primaryTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      SizedBox(
                        height: context.propHeight(60),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              BlocProvider.of<AuthBloc>(context)
                                  .add(gallaryEvent);
                              Navigator.pop(context); // Close the dialog
                            },
                            child: Container(
                                width: context.propWidth(118),
                                height: context.propHeight(52),
                                padding: EdgeInsets.symmetric(
                                    horizontal: context.propWidth(32),
                                    vertical: context.propHeight(16)),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFA2A2A2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Gallery',
                                    style: AppTheme(context)
                                        .theme
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                )),
                          ),
                         InkWell(
                            onTap: () {
                              BlocProvider.of<AuthBloc>(context)
                                  .add(cameraEvent);
                              Navigator.pop(context); // Close the dialog
                            },
                            child: Container(
                                width: context.propWidth(118),
                                height: context.propHeight(52),
                                padding: EdgeInsets.symmetric(
                                    horizontal: context.propWidth(32),
                                    vertical: context.propHeight(16)),
                                decoration: ShapeDecoration(
                                  color:AppColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Camera',
                                    style: AppTheme(context)
                                        .theme
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                )),
                          ),
                          ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: context.propWidth(60),
        height: context.propHeight(52),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: imageFile != null ? AppColors.primaryColor : Colors.grey,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.20, color: Colors.white),
            borderRadius: BorderRadius.circular(35),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 2,
              offset: Offset(0, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(child: Image.asset(AssetManger.photoEdit)),
      ),
    );
  }
}
