import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/country_provider.dart';
import '../styles/styles.dart';
import 'controllers/button_active_controller.dart';
import 'controllers/hint_opacity_controller.dart';
import 'controllers/mask_controller.dart';
import 'controllers/telephone_number_result_controller.dart';
import 'controllers/text_controllers.dart';
import 'pages/home/home_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountryProvider>(create: (context) => CountryProvider()),
        ChangeNotifierProvider<HintOpacityController>(create: (context) => HintOpacityController()),
        ChangeNotifierProvider<ButtonActiveController>(create: (context) => ButtonActiveController()),
        ChangeNotifierProvider<TelephoneNumberResultController>(create: (context) => TelephoneNumberResultController()),
        ChangeNotifierProvider(create: (_) => TextControllers()),
        Provider<MaskController>(create: (context) => MaskController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: ThemeData(
          scaffoldBackgroundColor: background,
          primaryColor: const Color(0xFFFFFFFF),
        ),
        home: const Scaffold(
          resizeToAvoidBottomInset: false,
          body: HomePage(),
        ),
      ),
    );
  }
}
