import 'package:get/get.dart';

import '../viewModel/nextDetailViewModel.dart';

class NextDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NextDetailViewModel>(() => NextDetailViewModel());
  }
}
