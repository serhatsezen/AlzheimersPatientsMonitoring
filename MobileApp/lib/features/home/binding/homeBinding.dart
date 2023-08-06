import 'package:get/get.dart';

import '../viewModel/homeViewModel.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
  }
}
