part of '{{feature_name.snakeCase()}}_bloc.dart';

sealed class {{feature_name.pascalCase()}}Event extends Equatable {
  const {{feature_name.pascalCase()}}Event();

  @override
  List<Object?> get props => [];
}

/// Naming convention: Subject + Noun + PastTenseVerb
class {{feature_name.pascalCase()}}FetchRequested extends {{feature_name.pascalCase()}}Event {
  const {{feature_name.pascalCase()}}FetchRequested();
}
