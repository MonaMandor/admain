// features/add/presentation/pages/auction.dart

import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/Custom_button.dart';
import 'package:admain/core/shared/shared_widget/category_price_filed.dart';
import 'package:admain/core/shared/shared_widget/custom_category_filed.dart';
import 'package:admain/core/shared/shared_widget/id_filed.dart';
import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/home/presentation/bloc/auth_bloc.dart';
import 'package:admain/features/home/presentation/widgets/image_widget.dart';
import 'package:admain/features/home/presentation/widgets/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAuction extends StatefulWidget {
  @override
  _AddAuctionState createState() => _AddAuctionState();
}

class _AddAuctionState extends State<AddAuction> {
  TextEditingController productIdcontroller = TextEditingController();
  TextEditingController firstImageController = TextEditingController();
  TextEditingController firstPriceController = TextEditingController();
  TextEditingController userIdcontroller = TextEditingController();
  TextEditingController highestPriceController = TextEditingController();

  List<sub_category> firstList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: txt(" Add Auction", Colors.white, 20, true),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
             IdFiled(controller: productIdcontroller, titel: "Product ID",),
              SizedBox(height: context.propHeight(20),),
             IdFiled(controller: userIdcontroller, titel: "User ID",),
              SizedBox(height: context.propHeight(20),),
             
            CustomCategoryPriceField (
              controller: firstPriceController,
              titel: "First Price",
            ),
              SizedBox(height: context.propHeight(20),),
                CustomCategoryPriceField (
              controller: highestPriceController,
              titel: "Highest Price",
            ),

              
              SizedBox(height: context.propHeight(20),),
              CustomButton(
                height: context.propHeight(65),
                style: AppTheme(context).theme.textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: ResponsiveText.responsiveFontSize(context, 20),
                    ), 

                title: "Add category",
                onPressed: () {
                  String name = productIdcontroller.text;
                  String image = firstImageController.text;
                  String price = firstPriceController.text;
        
                  if (name.isNotEmpty && image.isNotEmpty && price.isNotEmpty) {
                    sub_category newfirst = sub_category(
                      name: name,
                      image: image,
                      price: price,
                    );
        
                    setState(() {
                      firstList.add(newfirst);
                    });
        
                    productIdcontroller.clear();
                    firstImageController.clear();
                    firstPriceController.clear();
                    highestPriceController.clear();
                    userIdcontroller.clear();

                  }
                  ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Auction Added Successfully'),
                duration: Duration(seconds: 1),
                backgroundColor: AppColors.primaryColor,
              ),
            );
                },
              ),
              
              ],
          ),
        ),
      ),
    );
  }
}
