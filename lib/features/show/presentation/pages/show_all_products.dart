// features/admain/presentation/pages/all_user_screen.dart
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowAllProducts extends StatefulWidget {
  @override
  State<ShowAllProducts> createState() => _ShowAllProductsState();
}

class _ShowAllProductsState extends State<ShowAllProducts> {
  List JasonList = [
   {
      "Product Name": "zan wood",
      "Slug": "zan wood",
      "description":
          'Has a reddish color and a linear, striped pattern that is very soft with minor color variations. It is cheaper than oak but more expensive than moski and normally used to for visible parts of the furniture because it looks nice and is cheaper than oak',
          "price":"1000",
          "quality":"Used fair",
          "category":"663d15d51b3c3b7e3669b632",
          "subcategory":"663d162f1b3c3b7e3669b641",
    },
    {
      "Product Name": "zan wood",
      "Slug": "zan wood",
      "description":
          'Has a reddish color and a linear, striped pattern that is very soft with minor color variations. It is cheaper than oak but more expensive than moski and normally used to for visible parts of the furniture because it looks nice and is cheaper than oak',
          "price":"1000",
          "quality":"Used fair",
          "category":"663d15d51b3c3b7e3669b632",
          "subcategory":"663d162f1b3c3b7e3669b641",
    },
    {
      "Product Name": "zan wood",
      "Slug": "zan wood",
      "description":
          'Has a reddish color and a linear, striped pattern that is very soft with minor color variations. It is cheaper than oak but more expensive than moski and normally used to for visible parts of the furniture because it looks nice and is cheaper than oak',
          "price":"1000",
          "quality":"Used fair",
          "category":"663d15d51b3c3b7e3669b632",
          "subcategory":"663d162f1b3c3b7e3669b641",
    },
    {
      "Product Name": "zan wood",
      "Slug": "zan wood",
      "description":
          'Has a reddish color and a linear, striped pattern that is very soft with minor color variations. It is cheaper than oak but more expensive than moski and normally used to for visible parts of the furniture because it looks nice and is cheaper than oak',
          "price":"1000",
          "quality":"Used fair",
          "category":"663d15d51b3c3b7e3669b632",
          "subcategory":"663d162f1b3c3b7e3669b641",
    },
    {
      "Product Name": "zan wood",
      "Slug": "zan wood",
      "description":
          'Has a reddish color and a linear, striped pattern that is very soft with minor color variations. It is cheaper than oak but more expensive than moski and normally used to for visible parts of the furniture because it looks nice and is cheaper than oak',
          "price":"1000",
          "quality":"Used fair",
          "category":"663d15d51b3c3b7e3669b632",
          "subcategory":"663d162f1b3c3b7e3669b641",
    },
    {
      "Product Name": "zan wood",
      "Slug": "zan wood",
      "description":
          'Has a reddish color and a linear, striped pattern that is very soft with minor color variations. It is cheaper than oak but more expensive than moski and normally used to for visible parts of the furniture because it looks nice and is cheaper than oak',
          "price":"1000",
          "quality":"Used fair",
          "category":"663d15d51b3c3b7e3669b632",
          "subcategory":"663d162f1b3c3b7e3669b641",
    },
  
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: Color(0xff1E6242),
        title: txt('Get All Products ', Colors.white, 20, true),
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
                          'Product Name:',
                          style: TextStyle(
                              fontSize: 25,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                        txt(JasonList[index]['Product Name'], Colors.black, 20,
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
                        'price:',
                        style: TextStyle(
                            fontSize: 25,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      txt(JasonList[index]['price'], Colors.black, 20, false),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'quality:',
                        style: TextStyle(
                            fontSize: 25,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      txt(JasonList[index]['quality'], Colors.black, 20, false),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'category:',
                        style: TextStyle(
                            fontSize: 25,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      txt(JasonList[index]['category'], Colors.black, 14, false),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'subcategory:',
                        style: TextStyle(
                            fontSize: 25,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(JasonList[index]['subcategory'],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 3,)
                    ],
                  ),
 Row(
                      children: [
                        Text(
                          'description:',
                          style: TextStyle(
                              fontSize: 25,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      JasonList[index]['description'],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
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
      ),)
    );
  }
}
