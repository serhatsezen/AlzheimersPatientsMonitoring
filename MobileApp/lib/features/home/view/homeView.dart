
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../main.dart';
import '../../../route/app_routes.dart';
import '../viewModel/homeViewModel.dart';

class HomeView extends GetView<HomeViewModel> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("hello".tr),
            Text('message'),
            ElevatedButton(onPressed: () => { controller.increment() }, child: Text("+ Counter"),),
            ElevatedButton(onPressed: () => { controller.normalVal++ }, child: Text("+ Normal Val"),),
            ElevatedButton(onPressed: () => { Get.toNamed(AppRoutes.nextDetail) }, child: Text('Next Page'),),
            ElevatedButton(onPressed: () => { controller.welcome() }, child: Text('Show Welcome Dialog'),),
            ElevatedButton(onPressed: () => { controller.updateSampleWithGetBuilder() }, child: Text('Update Sample With GetBuilder'),),
            ElevatedButton(onPressed: () => {
              controller.normalVal++,
              controller.update(['mixinBuilderSampleId'])
            }, child: Text('Mixin Builder Test'),),
            Obx(() => Text(
                'Obx: ${MyApp.counter} - normalVal: ${controller.normalVal}'
            ),),
            GetX<HomeViewModel>(
                builder: (c) =>
                    Text( 'GetX worked: ${c.getCounter()} - normalVal:  ${c.normalVal}')
            ),
            GetBuilder<HomeViewModel>(
              id: 'getBuilderSampleId',
              builder: (c) => Text(
                'GetBuilder worked: ${c.getCounter()} - normalVal: ${c.normalVal}', // this will update
              ),
            ),
            MixinBuilder<HomeViewModel>(
              id: 'mixinBuilderSampleId',
              builder: (c) => Text(
                'MixinBuilder worked: ${c.getCounter()} - normalVal: ${c.normalVal}',
              ),
            ),

          ],
        ),
      ),
    );
  }

}