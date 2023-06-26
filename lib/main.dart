import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_brl_conversor/modules/home/home_page.dart';

import 'modules/home/home_controller.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeController(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        // theme: appTheme.defaultTheme,
      ),
    );
  }
}
