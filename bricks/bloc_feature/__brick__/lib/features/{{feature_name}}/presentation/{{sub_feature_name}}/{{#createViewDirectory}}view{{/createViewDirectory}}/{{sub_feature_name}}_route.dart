import 'package:flutter/material.dart';
import 'package:{{app_name}}/features/{{feature_name}}/presentation/{{sub_feature_name}}/view/{{sub_feature_name}}_page.dart';
{{#isPresentation}}
{{#isBlocController}}import 'package:{{app_name}}/features/{{feature_name}}/presentation/{{sub_feature_name}}/bloc/{{sub_feature_name}}_bloc.dart';{{/isBlocController}}
{{#isCubitController}}import 'package:{{app_name}}/features/{{feature_name}}/presentation/{{sub_feature_name}}/bloc/{{sub_feature_name}}_cubit.dart';{{/isCubitController}}
import 'package:flutter_bloc/flutter_bloc.dart';
{{/isPresentation}}
class {{sub_feature_name.pascalCase()}}Route extends StatelessWidget {
  const {{sub_feature_name.pascalCase()}}Route({super.key});

  @override
  Widget build(BuildContext context) {
    {{#isPresentation}}
       return BlocProvider<{{sub_feature_name.pascalCase()}}{{#isBlocController}}Bloc{{/isBlocController}}{{#isCubitController}}Cubit{{/isCubitController}}>(
          create: (_) => {{sub_feature_name.pascalCase()}}{{#isBlocController}}Bloc{{/isBlocController}}{{#isCubitController}}Cubit{{/isCubitController}}(){{#isCubitController}}..load(){{/isCubitController}},
          child: const {{sub_feature_name.pascalCase()}}Page(),
        ){{#isBlocController}}..add({{sub_feature_name.pascalCase()}}Initialized()){{/isBlocController}};
    {{/isPresentation}}{{#isPresentationView}}
      return const {{sub_feature_name.pascalCase()}}Page();
    {{/isPresentationView}}
 
  }
}