// routes/modular_routes.dart
// ignore_for_file: prefer_const_constructors// ignore_for_file: prefer_const_constructors, prefer_const_constructors
import 'package:admain/features/add/presentation/pages/auction.dart';
import 'package:admain/features/home/presentation/pages/update_sub_category_Screen.dart';
import 'package:admain/features/show/presentation/pages/show_all_products.dart';
import 'package:admain/features/delete/presentation/pages/delete_account_screen.dart';
import 'package:admain/features/delete/presentation/pages/delete_category_screen.dart';
import 'package:admain/features/delete/presentation/pages/delete_product.dart';
import 'package:admain/features/delete/presentation/pages/delete_sub_category_screen.dart';
import 'package:admain/features/home/presentation/pages/home_layout.dart';
import 'package:admain/features/show/presentation/pages/show_all_category.dart';
import 'package:admain/features/show/presentation/pages/show_all_users.dart';
import 'package:admain/features/show/presentation/pages/show_subCategory.dart';
import 'package:admain/features/add/presentation/pages/add_category.dart';
import 'package:admain/features/add/presentation/pages/add_product.dart';
import 'package:admain/features/add/presentation/pages/add_subCategory.dart';
import 'package:admain/features/update/presentation/pages/update_auction.dart';
import 'package:admain/features/update/presentation/pages/update_category.dart';
import 'package:admain/features/update/presentation/pages/update_product.dart';
import 'package:admain/routes/routes_names.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_interfaces/src/route/modular_arguments.dart';



List<ModularRoute> modularRoutes = <ChildRoute<dynamic>>[
    ChildRoute<dynamic>(
    AppRoutes.start,
    child: (_, ModularArguments args) => const  HomeLayout(),
    transition: TransitionType.upToDown,
  ), 
  ChildRoute<dynamic>(
    AppRoutes.addSubCategory,
    child: (_, ModularArguments args) =>   AddSubCategory(),
    transition: TransitionType.upToDown,
  ),
  
  ChildRoute<dynamic>(
    AppRoutes.deleteSubCategoryScreen,
    child: (_, ModularArguments args) =>   DeleteSubCategoryScreen(),
    transition: TransitionType.upToDown,
  ),
 
  ChildRoute<dynamic>(
    AppRoutes.addCategory,
    child: (_, ModularArguments args) =>   AddCategory(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.addProduct,
    child: (_, ModularArguments args) =>   AddProduct(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.dleteAccountScreen,
    child: (_, ModularArguments args) =>   DleteAccountScreen(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.deleteCategoryScreen,
    child: (_, ModularArguments args) =>   DeleteCategoryScreen(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.deleteProductScreen,
    child: (_, ModularArguments args) =>   DeleteProductScreen(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.updateCategoryScreen,
    child: (_, ModularArguments args) =>   UpdateCategoryScreen(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.updateSupCategoryScreen,
    child: (_, ModularArguments args) =>   UpdateSupCategory(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.updateProductScreen,
    child: (_, ModularArguments args) =>   UpdateProduct(),
    transition: TransitionType.upToDown,
  ),

  ChildRoute<dynamic>(
    AppRoutes.showAllProducts,
    child: (_, ModularArguments args) =>   ShowAllProducts(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.showAllCategory,
    child: (_, ModularArguments args) =>   ShowAllCategory(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.showAllSubCategory,
    child: (_, ModularArguments args) =>   ShowSubCategory(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.showAllUsers,
    child: (_, ModularArguments args) =>   ShowAllUsers(),
    transition: TransitionType.upToDown,
  ),

  ChildRoute<dynamic>(
    AppRoutes.addAuction,
    child: (_, ModularArguments args) =>   AddAuction(),
    transition: TransitionType.upToDown,
  ),
  ChildRoute<dynamic>(
    AppRoutes.updateAuction,
    child: (_, ModularArguments args) =>   UpdateAuction(),
    transition: TransitionType.upToDown,
  ),












  ];
