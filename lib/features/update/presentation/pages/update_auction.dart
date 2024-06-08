// features/update/presentation/pages/update_auction.dart

import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/Custom_button.dart';
import 'package:admain/core/shared/shared_widget/category_price_filed.dart';
import 'package:admain/core/shared/shared_widget/id_filed.dart';
import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/home/presentation/widgets/sub_category.dart';
import 'package:flutter/material.dart';

class UpdateAuction extends StatefulWidget {
  @override
  _UpdateAuctionState createState() => _UpdateAuctionState();
}

class _UpdateAuctionState extends State<UpdateAuction> {
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
        title: txt(" Update Auction", Colors.white, 20, true),
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

                title: "Update category",
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
                content: Text('Auction Updateed Successfully'),
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
