import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/{{feature_name.snakeCase()}}_bloc.dart';
import 'repository/{{feature_name.snakeCase()}}_repository.dart';
import 'widget/{{feature_name.snakeCase()}}_body.dart';

class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  const {{feature_name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{feature_name.pascalCase()}}Bloc(
        // TODO(developer): Inject real repository via get_it or context.read
        repository: {{feature_name.pascalCase()}}Repository(dio: context.read()),
      )..add(const {{feature_name.pascalCase()}}FetchRequested()),
      child: const Scaffold(
        appBar: _AppBar(),
        body: {{feature_name.pascalCase()}}Body(),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('{{feature_name.titleCase()}}'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
