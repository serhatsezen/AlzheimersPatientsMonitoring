import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../route/app_routes.dart';
import '../viewModel/splashViewModel.dart';

class SplashView extends GetView {

  SplashViewModel controller = Get.put( SplashViewModel() );

  @override
  Widget build(BuildContext context) {

    controller.test();

    return Scaffold(

      appBar: AppBar(
        title: Text("Splash"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () => { Get.offAllNamed(AppRoutes.login) }, child: const Text('To Home'),),
          ],
        ),
      ),
    );
  }

}