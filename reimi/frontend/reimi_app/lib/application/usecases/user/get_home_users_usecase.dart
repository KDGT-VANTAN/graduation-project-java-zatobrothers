import 'package:reimi_app/domain/read_models/home_user_read_model.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class GetHomeUsersUseCase {
  GetHomeUsersUseCase(this._repository);
  final UserRepository _repository;

  Future<List<HomeUserReadModel>> call() async {
    final users = await _repository.fetchHomeUsers();
    return users;
  }
}
