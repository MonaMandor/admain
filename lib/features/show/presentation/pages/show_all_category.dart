// features/admain/presentation/pages/show_all_category.dart
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowAllCategory extends StatefulWidget {
  @override
  State<ShowAllCategory> createState() => _ShowAllCategoryState();
}

class _ShowAllCategoryState extends State<ShowAllCategory> {
  List JasonList = [
    {
      "Category Name": "glass",
      "Slug": "glass",
      
      "Id": "663d162f1b3c3b7e3669b641",
      
    },
    {
      "Category Name": "glass",
      "Slug": "glass",
      
      "Id": "663d162f1b3c3b7e3669b641",
      
    },
    {
      "Category Name": "glass",
      "Slug": "glass",
      
      "Id": "663d162f1b3c3b7e3669b641",
      
    },
   ];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        appBar: AppBar(
          backgroundColor: Color(0xff1E6242),
          title: txt('Get All Categorys ', Colors.white, 20, true),
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
                          'Category Name:',
                          style: TextStyle(
                              fontSize: 25,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        txt(JasonList[index]['Category Name'], Colors.black, 20,
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
