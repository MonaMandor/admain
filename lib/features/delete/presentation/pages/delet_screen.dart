// features/delete/presentation/pages/delet_screen.dart



import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/delete/presentation/widgets/delete_widget.dart';
import 'package:flutter/material.dart';

class DeleteScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: txt("Dlete Management", Colors.white, 20, true),
      ),
      body: Center(
        child: DleteWidget() ),
    );
  }
}