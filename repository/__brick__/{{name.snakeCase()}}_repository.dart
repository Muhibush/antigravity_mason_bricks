import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

// TODO(developer): Import Failure and API Provider
// import '../../core/network/api_provider.dart';

class {{name.pascalCase()}}Repository {
  {{name.pascalCase()}}Repository({
    required this.dio,
  });

  final Dio dio;

  Future<Either<Exception, dynamic>> fetchData() async {
    try {
      final response = await dio.get('/endpoint');
      return Right(response.data);
    } on DioException catch (e) {
      return Left(Exception(e.message));
    } catch (e) {
      return Left(Exception('Unexpected error occurred'));
    }
  }
}
