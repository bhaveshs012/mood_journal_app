import 'package:get/get.dart';
import 'package:mood_journal_app/auth/auth_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
  }
}
