import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State()) {
    on<{{name.pascalCase()}}Started>(_onStarted);
  }

  void _onStarted(
    {{name.pascalCase()}}Started event,
    Emitter<{{name.pascalCase()}}State> emit,
  ) {
    // TODO: implement event handler
  }
}
