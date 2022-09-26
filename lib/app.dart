import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_techno_space/config/routes/app_routes.dart';
import 'package:note_techno_space/config/themes/app_theme.dart';
import 'package:note_techno_space/core/utils/app_strings.dart';
import 'package:note_techno_space/injector.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO make multi bloc provider here
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: appTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
