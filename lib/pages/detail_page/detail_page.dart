import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: background),
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Happy time',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 50),
            IconButton(
              onPressed: () {
                // add func for reset button value
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                size: 20.0,
              ),
            ),
            const Text('Back'),
          ]),
        ),
      ),
    );
  }
}