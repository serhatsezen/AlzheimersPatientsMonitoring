import 'package:get/get.dart';

import '../viewModel/loginViewModel.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
  }
}
