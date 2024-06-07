// features/show/presentation/pages/show_all_users.dart
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/shared/shared_widget/txt.dart';
import 'package:admain/core/theme/app_colors.dart';

import 'package:flutter/material.dart';

class ShowAllUsers extends StatefulWidget {
  @override
  State<ShowAllUsers> createState() => _ShowSubCategoryState();
}

class _ShowSubCategoryState extends State<ShowAllUsers> {
  List JasonList = [
     {
          
            "firstName": "mohamed",
            "lastName": "ashraf",
            "userName": "mohamed eltayeb",
            "email": "popm5462@gmail.com",
            
            "address": "jjjdjdjdj",
            "phone": "1110655064",
           
        },
        {
           "id": "6661d830c67fcf3987d9863b",
            "firstName": "ashraf",
            "lastName": "mode",
            "userName": "modeashraf",
            "email": "modeashraf@gmail.com",
            
            "address": "omar abn elkhatab street",
            "phone": "1112223335",
           
        },
        {
           "id": "6661d830c67fcf3987d9863b",
            "firstName": "popoppo",
            "lastName": "popd",
            "userName": "popppppp",
            "email": "popmahhh@gmail.com",
           
            "address": "omar",
            "phone": "1112221111",
            
        },
        {
           "id": "6661d830c67fcf3987d9863b",
            "firstName": "hazem",
            "lastName": "ghanem",
            "userName": "Hazem00",
            "email": "hazems33339s@gmail.com",
           
            "address": "omarmhmed",
            "phone": "1007800999",
            
        },
        {
           "id": "6661d830c67fcf3987d9863b",
            "firstName": "Ashraf",
            "lastName": "khaled",
            "userName": "khaled Ashraf",
            "email": "khaledashraf@gmail.com",
           
            "address": "omar abn elkhatab street",
            "phone": "1552388895",
            
        },
        {
            "id": "6661d830c67fcf3987d9863b",
            "firstName": "Hazem",
            "lastName": "Ghanem",
            "userName": "Hazem55",
            "email": "hazems66@gmail.com",
            
            "address": "omarmhmed",
            "phone": "1007800555",
            

           
        }
    
     ];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        appBar: AppBar(
          backgroundColor: Color(0xff1E6242),
          title: txt('Get All Users ', Colors.white, 20, true),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              top: context.propHeight(20),
              left: context.propWidth(20),
              right: context.propWidth(20)),
          child: ListView.separated(
            itemCount: JasonList == null ? 0 : JasonList.length,
            itemBuilder: (BuildContext context, int index) {
              return  Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'FirstName:',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            txt(JasonList[index]['firstName'], Colors.black, 20,
                                false),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'LastName: ',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            txt(JasonList[index]['lastName'], Colors.black, 20, false),
                          ],
                  
                  
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'UserName: ',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            txt(JasonList[index]['userName'], Colors.black, 20, false),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Email: ',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            txt(JasonList[index]['email'], Colors.black, 20, false),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Address: ',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            txt(JasonList[index]['address'], Colors.black, 20, false),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Phone: ',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            txt(JasonList[index]['phone'], Colors.black, 20, false),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ID: ',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            txt(JasonList[index]['id'], Colors.black, 20, false),
                          ],
                        ),
                  
                      ],
                  ),
                ),
              );
               
                
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
