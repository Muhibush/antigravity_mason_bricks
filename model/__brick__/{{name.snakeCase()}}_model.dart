import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}_model.g.dart';

@JsonSerializable()
class {{name.pascalCase()}}Model extends Equatable {
  const {{name.pascalCase()}}Model({
    required this.id,
  });

  factory {{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}ModelFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _${{name.pascalCase()}}ModelToJson(this);

  {{name.pascalCase()}}Model copyWith({
    String? id,
  }) {
    return {{name.pascalCase()}}Model(
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [id];
}
