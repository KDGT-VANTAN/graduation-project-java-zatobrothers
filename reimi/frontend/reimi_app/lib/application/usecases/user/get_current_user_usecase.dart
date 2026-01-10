import 'package:reimi_app/domain/read_models/app_user_read_model.dart';
import '../../../domain/repositories/user_repository.dart';

class GetCurrentUserUseCase {
  const GetCurrentUserUseCase(this._repository);
  final UserRepository _repository;

  Future<AppUserReadModel> call() async {
    return await _repository.fetchCurrentUser();
  }
}
