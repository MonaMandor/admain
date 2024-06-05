// features/admain/presentation/pages/add_screen.dart



import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/admain/presentation/widgets/add_widget.dart';
import 'package:admain/features/admain/presentation/widgets/tabe_wadget.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: txt("Add Management", Colors.white, 20, true),
      ),
      body: Center(
        child: AddWidget() ),
    );
  }
}