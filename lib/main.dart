import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/country_provider.dart';
import '../styles/styles.dart';
import 'controller/mask_controller.dart';
import 'controller/opacity_controller.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountryProvider>(create: (context) => CountryProvider()),
        ChangeNotifierProvider<HintOpacityController>(create: (context) => HintOpacityController()),
        Provider<MaskController>(create: (context) => MaskController()),
      ],
      child: MaterialApp(
        title: 'phone_number_input_fromscratch',
        theme: ThemeData(
          scaffoldBackgroundColor: background,
          primaryColor: white,
        ),
        home: const Scaffold(
          resizeToAvoidBottomInset: false,
          body: HomePage(),
        ),
      ),
    );
  }
}
