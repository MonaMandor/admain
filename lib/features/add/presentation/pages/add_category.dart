// features/add/presentation/pages/add_category.dart

import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/Custom_button.dart';
import 'package:admain/core/shared/shared_widget/category_price_filed.dart';
import 'package:admain/core/shared/shared_widget/custom_category_filed.dart';
import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/home/presentation/bloc/auth_bloc.dart';
import 'package:admain/features/home/presentation/widgets/image_widget.dart';
import 'package:admain/features/home/presentation/widgets/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCategory extends StatefulWidget {
  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  TextEditingController subCategoryNameController = TextEditingController();
  TextEditingController subCategoryImageController = TextEditingController();
  TextEditingController subCategoryPriceController = TextEditingController();

  List<sub_category> subCategoryList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: txt(" Add Category", Colors.white, 20, true),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomCategoryField(controller:subCategoryNameController ,
               titel: "category Name",
              ),
              SizedBox(height: context.propHeight(20),),

            CustomCategoryPriceField (
              controller: subCategoryPriceController,
              titel: "category Price",
            ),
              SizedBox(height: context.propHeight(20),),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return ImageWidget(
                    cameraEvent: CategoryImageFromCamera(),
                    gallaryEvent: CategoryImageFromGallery(),
                    imageFile: BlocProvider.of<AuthBloc>(context).categoryImage,
                    titel: "Category Image",
                  );
                },
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
                  String name = subCategoryNameController.text;
                  String image = subCategoryImageController.text;
                  String price = subCategoryPriceController.text;
        
                  if (name.isNotEmpty && image.isNotEmpty && price.isNotEmpty) {
                    sub_category newSubCategory = sub_category(
                      name: name,
                      image: image,
                      price: price,
                    );
        
                    setState(() {
                      subCategoryList.add(newSubCategory);
                    });
        
                    subCategoryNameController.clear();
                    subCategoryImageController.clear();
                    subCategoryPriceController.clear();
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Category Added Successfully'),
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
