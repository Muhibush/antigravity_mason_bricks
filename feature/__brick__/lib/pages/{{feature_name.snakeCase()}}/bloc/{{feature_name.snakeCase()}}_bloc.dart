import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

import '../model/{{feature_name.snakeCase()}}_model.dart';
import '../repository/{{feature_name.snakeCase()}}_repository.dart';

part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc({
    required {{feature_name.pascalCase()}}Repository repository,
  })  : _repository = repository,
        super(const {{feature_name.pascalCase()}}State()) {
    on<{{feature_name.pascalCase()}}FetchRequested>(
      _onFetchRequested,
      transformer: droppable(),
    );
  }

  final {{feature_name.pascalCase()}}Repository _repository;

  Future<void> _onFetchRequested(
    {{feature_name.pascalCase()}}FetchRequested event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final result = await _repository.fetchData();

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: BlocStatus.failure,
          errorMessage: failure.message,
        ),
      ),
      (data) => emit(
        state.copyWith(
          status: BlocStatus.success,
          data: data,
        ),
      ),
    );
  }
}
