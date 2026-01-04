import 'package:reimi_app/data/models/app_user_model.dart';
import '../../repositories/user_repository.dart';

class GetCurrentUserUseCase {
  const GetCurrentUserUseCase(this.userRepository);
  final UserRepository userRepository;

  Future<AppUserModel?> call() async {
    final user = userRepository.fetchCurrentUser();
    return user;
  }
}
