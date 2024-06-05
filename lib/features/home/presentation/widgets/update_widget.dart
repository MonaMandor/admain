// features/admain/presentation/widgets/update_widget.dart

// ignore_for_file: non_constant_identifier_names

import 'package:admain/core/constansts/asset_manger.dart';
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class UpdateWidget extends StatelessWidget {
  UpdateWidget({super.key});

  List<String> servicesImages = [
    //AssetManger.favorite,
    AssetManger.photoEdit,
    AssetManger.photoEdit,
    AssetManger.photoEdit,
    AssetManger.photoEdit,

    // Add more image paths for each tab
  ];

  List<String> servicesNames = [
    //Strings.favorite,
    'Auction ',
    'SubCategory ',
    'Category ',
    ' Product',

    // Add more names for each tab
  ];
  List<String> UpdateWidgets = [
    AppRoutes.updateCategoryScreen, //
    AppRoutes.updateSubCategoryScreen,
    AppRoutes.updateCategoryScreen,
    AppRoutes.updateProductScreen,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: context.propWidth(20),
          right: context.propWidth(20),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: context.propWidth(30),
          mainAxisSpacing: context.propHeight(25),
          childAspectRatio: context.propWidth(150) /
              context.propHeight(125), // Width to height ratio for each tab

          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(servicesNames.length, (index) {
            return GestureDetector(
              onTap: () {
                Modular.to.pushNamed(UpdateWidgets[index]);
              },
              child: Container(
                width: context.propWidth(250),
                height: context.propHeight(120),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(
                    left: context.propWidth(30),
                    right: context.propWidth(30),
                    top: context.propHeight(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        servicesImages[index % servicesImages.length],
                        width: context.propWidth(54),
                        height: context.propHeight(54),
                        color: AppColors.primaryColor,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: context.propHeight(8)),
                      Text(
                        servicesNames[index % servicesNames.length],
                        style: GoogleFonts.inter(
                          fontSize:
                              ResponsiveText.responsiveFontSize(context, 13),
                          fontWeight: FontWeight.w800,
                          color: AppColors.primaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
