// features/update/presentation/pages/update_screen.dart



import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/add/presentation/widgets/add_widget.dart';
import 'package:admain/features/home/presentation/widgets/tabe_wadget.dart';
import 'package:admain/features/home/presentation/widgets/update_widget.dart';
import 'package:flutter/material.dart';

class UpdateScrren extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: txt("Update Management", Colors.white, 20, true),
      ),
      body: Center(
        child: UpdateWidget() ),
    );
  }
}