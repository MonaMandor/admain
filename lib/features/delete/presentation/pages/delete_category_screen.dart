// features/admain/presentation/pages/delete_category_screen.dart

import 'package:admain/core/constansts/asset_manger.dart';
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/Custom_button.dart';
import 'package:admain/core/shared/shared_widget/category_price_filed.dart';
import 'package:admain/core/shared/shared_widget/id_filed.dart';
import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteCategoryScreen extends StatefulWidget {

  DeleteCategoryScreen({Key? key,}) : super(key: key);
  @override
  _DeleteCategoryScreenState createState() => _DeleteCategoryScreenState();
}

class _DeleteCategoryScreenState extends State<DeleteCategoryScreen> {
  final TextEditingController IdController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: txt('Delete Category', Colors.white, 20, false),
      ),
      body:  Padding(
              padding: EdgeInsets.only(
                top: context.propHeight(100),
                left: context.propWidth(40),
                right: context.propWidth(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: context.propHeight(200),
                    clipBehavior: Clip.antiAlias,
                    padding: EdgeInsets.only(
                      top: context.propHeight(10),
                      left: context.propWidth(10),
                      right: context.propWidth(10),
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      shadows: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: context.propHeight(10),
                              left: context.propWidth(20)),
                          child: Text(
                            'Enter the Category ID to delete it',
                            style: GoogleFonts.tajawal(
                                fontSize: ResponsiveText.responsiveFontSize(
                                    context, 20),
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor),
                          ),
                        ),
                        Image.asset(
                          AssetManger.emptyCart,
                          height: 120,
                          width: 120,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: context.propHeight(40)),
                 IdFiled(controller: IdController, titel: 'Category ID'),
                  SizedBox(height: context.propHeight(80) ),
                  CustomButton(
                 height: context.propHeight(65),
                    title: 'Delete Category',
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Category Deleted Successfully'),
                duration: Duration(seconds: 1),
                backgroundColor: AppColors.primaryColor,
              ),
            );
                    },
                     style: AppTheme(context).theme.textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: ResponsiveText.responsiveFontSize(context, 20),
                    ), 
                  ),
                
                ],
              ),
            ),
    );
  }
}
