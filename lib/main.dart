import 'package:belle_house_mobile_app/pages/home/main_property_page.dart';
import 'package:belle_house_mobile_app/pages/home/navigation_menu.dart';
import 'package:belle_house_mobile_app/pages/properties/furniture_details.dart';
import 'package:belle_house_mobile_app/pages/properties/house_details.dart';
import 'package:belle_house_mobile_app/pages/properties/houses_list.dart';
import 'package:belle_house_mobile_app/pages/properties/land_details.dart';
import 'package:belle_house_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'helpers/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //load dependencies
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Dimension.init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belle House',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainPropertyPage(),
    );
  }
}
