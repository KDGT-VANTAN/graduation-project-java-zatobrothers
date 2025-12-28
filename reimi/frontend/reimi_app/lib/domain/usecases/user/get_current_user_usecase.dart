import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import '../../repositories/user_repository.dart';

class GetCurrentUserUseCase {
  const GetCurrentUserUseCase({
    required this.authRepository,
    required this.userRepository,
  });
  final AuthRepository authRepository;
  final UserRepository userRepository;

  Future<UserEntity?> call() async {
    final user = await authRepository.getCurrentUser();
    if (user == null) {
      return null;
    } 
    // TODO: DBにデータがないので仮実装
    else if (user.uid == dotenv.get('FIREBASE_UID')) {
      return userRepository.fetchUser("user_000");
    }
    return userRepository.fetchUser(user.uid);
  }
}
