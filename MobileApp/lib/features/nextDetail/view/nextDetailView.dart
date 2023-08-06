
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../route/app_routes.dart';
import '../viewModel/nextDetailViewModel.dart';

class NextDetailView extends GetView<NextDetailViewModel> {

  @override
  Widget build(BuildContext context) {

    controller.fetchSampleApi();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () => { controller.increment() }, child: Text("+"),),
            ElevatedButton(onPressed: () => { Get.back() }, child: Text('Back'),),
            ElevatedButton(onPressed: () => { Get.offNamed(AppRoutes.home) }, child: Text('To Home'),),
            Obx(() => Text(
                '${controller.apiOutput}',
            ),),
          ],
        ),
      ),
    );
  }

}