import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/{{feature_name.snakeCase()}}_bloc.dart';

class {{feature_name.pascalCase()}}Body extends StatelessWidget {
  const {{feature_name.pascalCase()}}Body({super.key});

  @override
  Widget build(BuildContext context) {
    // DO NOT use BlocBuilder here. Use context.select for fine-grained rebuilds.
    final status = context.select(({{feature_name.pascalCase()}}Bloc bloc) => bloc.state.status);
    final data = context.select(({{feature_name.pascalCase()}}Bloc bloc) => bloc.state.data);

    if (status == BlocStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (status == BlocStatus.failure) {
      final error = context.select(
        ({{feature_name.pascalCase()}}Bloc bloc) => bloc.state.errorMessage,
      );
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: $error'),
            ElevatedButton(
              onPressed: () {
                context
                    .read<{{feature_name.pascalCase()}}Bloc>()
                    .add(const {{feature_name.pascalCase()}}FetchRequested());
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (data != null) {
      return Center(
        child: Text('Data: ${data.name}'),
      );
    }

    return const Center(child: Text('Empty State'));
  }
}
