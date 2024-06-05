// features/admain/presentation/pages/show_subCategory.dart
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_colors.dart';

import 'package:flutter/material.dart';

class ShowSubCategory extends StatefulWidget {
  @override
  State<ShowSubCategory> createState() => _ShowSubCategoryState();
}

class _ShowSubCategoryState extends State<ShowSubCategory> {
  List JasonList = [
    {
      "Sub Category Name": "zan-wood",
      "Slug": "glass",
      
      "Id": "663d162f1b3c3b7e3669b641",
      
    },
    {
      "Sub Category Name": "contr-wood",
      "Slug": "contr-wood",
      
      "Id": "663d164a1b3c3b7e3669b644",
      
    },
    {
      "Sub Category Name": "transpernt-glass",
      "Slug": "transpernt-glass",
      
      "Id": "663d167a1b3c3b7e3669b649",
      
    },
     {
      "Sub Category Name": "reflective-glass",
      "Slug": "reflective-glass",
      
      "Id": "663d16861b3c3b7e3669b64c",
      
    },
     {
      "Sub Category Name": "mild-iron",
      "Slug": "mild-iron",
      
      "Id": "663d16bb1b3c3b7e3669b655",
      
    },
     {
      "Sub Category Name": "high tensile-iron",
      "Slug": "high tensile-iron",
      
      "Id": "663d16d61b3c3b7e3669b65c",
      
    },

   ];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        appBar: AppBar(
          backgroundColor: Color(0xff1E6242),
          title: txt('Get All Sub Categorys ', Colors.white, 20, true),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              top: context.propHeight(20),
              left: context.propWidth(20),
              right: context.propWidth(20)),
          child: ListView.separated(
            itemCount: JasonList == null ? 0 : JasonList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: ListTile(
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name:',
                          style: TextStyle(
                              fontSize: 25,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        txt(JasonList[index]['Sub Category Name'], Colors.black, 20,
                            false),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Slug:',
                          style: TextStyle(
                              fontSize: 25,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        txt(JasonList[index]['Slug'], Colors.black, 20, false),
                      ],
                    ),
                  ],
                ),
                subtitle: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Id:',
                          style: TextStyle(
                              fontSize: 25,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        txt(JasonList[index]['Id'], Colors.black, 20, false),
                      ],
                    ),
                    ],
                ),
              ));
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: context.propHeight(30),
              );
            },
          ),
        ));
  }
}
