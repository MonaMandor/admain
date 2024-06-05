// features/home/presentation/pages/show_screen.dart



import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/show/presentation/widgets/show_widget.dart';
import 'package:flutter/material.dart';

class ShowScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: txt("Show Management", Colors.white, 20, true),
      ),
      body: Center(
        child: ShowWidget() ),
    );
  }
}