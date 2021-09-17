import 'package:api_flutter/repository/i_user_repository.dart';
import 'package:get/get.dart';

class DioController extends GetxController with StateMixin {
  final IUserRepository _dioRepository;

  DioController(this._dioRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  void findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _dioRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Não foi possível buscar os usuários'));
    }
  }
}
