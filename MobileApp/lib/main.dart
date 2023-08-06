import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/utils/baseTranslations.dart';
import 'observers/baseNavigatorObserver.dart';
import 'route/app_pages.dart';
import 'route/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static var counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: BaseTranslations(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      navigatorObservers: [
        GetObserver(BaseNavigatorObserver.observer)
      ],
    );
  }
}

