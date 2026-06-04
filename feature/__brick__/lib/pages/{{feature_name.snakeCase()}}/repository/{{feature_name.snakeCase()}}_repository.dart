import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

// TODO(developer): Import your actual ApiProvider and Failure class
// import '../../../core/network/api_provider.dart';
// import '../../../shared/models/failure.dart';
import '../model/{{feature_name.snakeCase()}}_model.dart';

class {{feature_name.pascalCase()}}Repository {
  {{feature_name.pascalCase()}}Repository({
    required this.dio,
  });

  final Dio dio;

  Future<Either<Exception, {{feature_name.pascalCase()}}Model>> fetchData() async {
    try {
      final response = await dio.get('/endpoint');
      
      return Right({{feature_name.pascalCase()}}Model.fromJson(response.data as Map<String, dynamic>));
    } on DioException catch (e) {
      // TODO(developer): Return your custom Failure class instead of raw Exception
      return Left(Exception(e.message));
    } catch (e) {
      return Left(Exception('Unexpected error occurred'));
    }
  }
}
