// features/admain/presentation/widgets/image_widget.dart
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:admain/core/constansts/asset_manger.dart';
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/admain/presentation/bloc/auth_bloc.dart';
import 'package:admain/features/admain/presentation/widgets/image_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageWidget extends StatelessWidget {
  final String titel;
  final File? imageFile;
  final gallaryEvent;
  final cameraEvent;
  const ImageWidget({
    required this.titel,
    required this.imageFile,
    super.key,
    required this.gallaryEvent,
    required this.cameraEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Upload documents',
            style: AppTheme(context).theme.textTheme.titleMedium),
        SizedBox(height: context.propHeight(18)),
        Row(
          children: [
            Container(
              width: context.propWidth(254),
              height: context.propHeight(52),
              padding: EdgeInsets.symmetric(
                  horizontal: context.propWidth(24),
                  vertical: context.propHeight(16)),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: imageFile != null ? AppColors.primaryColor : Colors.grey,
                shape: RoundedRectangleBorder(
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
              child: Row(
                children: [
                  InkWell(
                    child: BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        if (imageFile != null) {
                          return Image.file(
                            imageFile!,
                            width: 20,
                            height: 20,
                            fit: BoxFit.fitHeight,
                          );
                        } else {
                          return Image.asset(
                            AssetManger.uploud,
                            fit: BoxFit.cover,
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(width: context.propWidth(10)),
                  Text(
                    titel,
                    style:
                        AppTheme(context).theme.textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                  ),
                ],
              ),
            ),
            SizedBox(width: context.propWidth(10)),
            ImageButton(
                cameraEvent: cameraEvent,
                gallaryEvent: gallaryEvent,
                imageFile: imageFile)
          ],
        ),
      ],
    );
  }
}
