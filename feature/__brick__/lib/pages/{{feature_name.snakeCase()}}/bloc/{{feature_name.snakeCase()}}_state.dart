part of '{{feature_name.snakeCase()}}_bloc.dart';

enum BlocStatus { initial, loading, success, failure }

class {{feature_name.pascalCase()}}State extends Equatable {
  const {{feature_name.pascalCase()}}State({
    this.status = BlocStatus.initial,
    this.data,
    this.errorMessage,
  });

  final BlocStatus status;
  final {{feature_name.pascalCase()}}Model? data;
  final String? errorMessage;

  {{feature_name.pascalCase()}}State copyWith({
    BlocStatus? status,
    {{feature_name.pascalCase()}}Model? data,
    String? errorMessage,
  }) {
    return {{feature_name.pascalCase()}}State(
      status: status ?? this.status,
      data: data ?? this.data,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, data, errorMessage];
}
