import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_ui/core/utils/controller.dart';
import 'dataLayer/cubit/app_cubit.dart';
import 'core/utils/constansts.dart';
import 'core/utils/injection.dart' as di;
import 'core/utils/injection.dart';
import 'presentationLayer/page/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => di.sl<AppBloc>(),
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),

        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        home: Dashboard(),
      ),
    );
  }
}
