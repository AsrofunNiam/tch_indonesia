import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tch_indonesia/src/app/bloc/theme_mode/theme_mode_bloc.dart';
import 'package:tch_indonesia/src/app/util/theme.dart';
import 'package:tch_indonesia/src/app/view/page/welcome/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  runApp(MultiBlocProvider(
    providers: [
      // BlocProvider(
      //   create: (context) =>
      //       ThemeModeBloc()..add(const ThemeModeEvent.started()),
      // ),
      BlocProvider<ThemeModeBloc>(create: (_) => ThemeModeBloc())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeBloc, ThemeMode>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'tch Indonesian',
          themeMode: state,
          theme: ThemeApp.light,
          darkTheme: ThemeApp.dark,
          home: const WelcomePage(),
        );
      },
    );
  }
}

// pub global run rename --appname "code"