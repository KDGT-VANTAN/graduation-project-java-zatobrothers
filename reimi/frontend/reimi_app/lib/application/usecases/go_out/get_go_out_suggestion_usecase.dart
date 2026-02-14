import 'package:reimi_app/domain/read_models/go_out_suggestion_read_model.dart';
import 'package:reimi_app/domain/repositories/go_out_repository.dart';

class GetGoOutSuggestionUseCase {
  const GetGoOutSuggestionUseCase(this._repository);
  final GoOutRepository _repository;

  Future<GoOutSuggestionReadModel> call() {
    return _repository.fetchGoOutSuggestion();
  }
}
