import 'package:get/get.dart';

import '../viewModel/registerViewModel.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterViewModel>(() => RegisterViewModel());
  }
}
