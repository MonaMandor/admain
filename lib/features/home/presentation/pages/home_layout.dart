// features/home/presentation/pages/home_layout.dart
// ignore_for_file: use_key_in_widget_constructors// ignore_for_file: use_key_in_widget_constructors
import 'package:admain/core/constansts/asset_manger.dart';
import 'package:admain/core/constansts/context_extensions.dart';
import 'package:admain/core/theme/app_Theme.dart';
import 'package:admain/core/theme/app_colors.dart';
import 'package:admain/features/add/presentation/pages/add_screen.dart';
import 'package:admain/features/show/presentation/pages/show_all_products.dart';
import 'package:admain/features/delete/presentation/pages/delet_screen.dart';import 'package:admain/features/show/presentation/pages/show_screen.dart';
import 'package:admain/features/update/presentation/pages/update_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeLayout extends StatefulWidget {
   final int index;

  const HomeLayout({super.key,  this.index = 0,});
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIdx = 0;

  final List<Widget> screens = [
   ShowScreen(),
    DeleteScreen(
   
    ),
    UpdateScrren(),
    AddScreen(),
  ];  final PageStorageBucket bucket = PageStorageBucket();



  late Widget currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = ShowAllProducts();
  }
  @override
  Widget build(BuildContext context) {
    // Initially, no item is selected
     Widget currentScreen =  ShowAllProducts();

    return Scaffold(
      backgroundColor:null,
      body: Stack(
       children: [ screens[selectedIdx],
         Align(
            alignment: Alignment.bottomCenter,
           child: AnimatedBottomNavigationBar.builder(
                 itemCount: 4, 
                 gapLocation: GapLocation.none,
                 notchSmoothness: NotchSmoothness.verySmoothEdge,
                 leftCornerRadius: 32,
                 rightCornerRadius: 32,
             
                 tabBuilder:(index, isActive) {
                   return Column(
                     children: [
                       Image.asset(
                                   index == 0
                                       ? isActive? AssetManger.userGeen:AssetManger.userGray 
                                       : index == 1
                        ? isActive? AssetManger.dleteGreen:AssetManger.dleteGray
                        : index == 2
                            ? isActive? AssetManger.mangementGreen: AssetManger.mangement
                            : isActive? AssetManger.mangementGreen:AssetManger.mangement,
                                   
                                   width: context.propWidth(24),
                                   height: context.propHeight(24)
                                   
                                   
                       ),
                        SizedBox(height: context.propHeight(7)),
                        Text(
                          index == 0
                              ? 'Show'
                              : index == 1
                                  ? 'delete '
                                  : index == 2
                                      ? 'update'
                                      : 'Add',
                          style: GoogleFonts.almarai(
                            fontSize: ResponsiveText.responsiveFontSize(context, 12),
                            fontWeight: FontWeight.w400,
                            color: isActive ? AppColors.primaryColor : AppColors.fourthTextColor,
                          ),
                        ),
                     ],
                   );
                 },
                 activeIndex: selectedIdx,
                
                 onTap: (index) => setState(() => selectedIdx = index),
                 //other params
           ),
         ),
      
        ]
      ),
    
    );
  }
}
