import 'package:reimi_app/data/models/home_user_model.dart';
import 'package:reimi_app/domain/repositories/user_repository.dart';

class GetHomeUsersUseCase {
  GetHomeUsersUseCase(this.userRepository);
  final UserRepository userRepository;

  Future<List<HomeUserModel>?> call() async {
    final users = await userRepository.fetchUsers();
    return users;
  }
}
