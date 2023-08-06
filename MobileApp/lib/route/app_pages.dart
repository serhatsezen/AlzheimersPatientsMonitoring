import 'package:get/get.dart';
import 'package:mobile_app/features/register/binding/registerBinding.dart';
import 'package:mobile_app/features/register/view/registerView.dart';

import '../features/home/binding/homeBinding.dart';
import '../features/home/view/homeView.dart';
import '../features/login/binding/loginBinding.dart';
import '../features/login/view/loginView.dart';
import '../features/nextDetail/binding/nextDetailBinding.dart';
import '../features/nextDetail/view/nextDetailView.dart';
import '../features/splash/view/splashView.dart';
import 'app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashView(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginView(),
      binding: LoginBinding()
    ),
    GetPage(
        name: AppRoutes.register,
        page: () => RegisterView(),
        binding: RegisterBinding()
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding()
    ),
    GetPage(
        name: AppRoutes.nextDetail,
        page: () => NextDetailView(),
        binding: NextDetailBinding(),
        transition: Transition.zoom
    ),

  ];
}
