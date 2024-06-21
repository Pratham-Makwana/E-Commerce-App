
import 'package:e_commerce_app/bindings/general_bindings.dart';
import 'package:e_commerce_app/features/authentication/screens/OnBoarding/onboarding.dart';
import 'package:e_commerce_app/routes/app_routes.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


/// -- Use this Class to Setup theme, initial Binding, any animation and much more using Material widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      getPages: AppRoutes.pages,
      // when ever application run it will automatically trigger this GeneralBinding and NetworkManger in this class
      initialBinding: GeneralBinding(),
      home:  const OnBoardingScreen(),
      /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen.
     // home:  const Scaffold(backgroundColor: TColors.primary,body: Center(child: CircularProgressIndicator(color: Colors.white,)),),
    );
  }
}