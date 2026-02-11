import 'package:reimi_app/domain/read_models/user_account_read_model.dart';
import '../../../domain/repositories/user_repository.dart';

class GetUserAccountUseCase {
  const GetUserAccountUseCase(this._repository);
  final UserRepository _repository;

  Future<UserAccountReadModel> call() {
    return _repository.fetchUserAccount();
  }
}
