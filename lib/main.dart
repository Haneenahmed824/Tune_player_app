import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:music_notes_player_app_setup/screen/home_page.dart';
void main() {
  runApp(
    DevicePreview(
      builder: (context) => const Tune_Player_App(), // Wrap your app
    ),
  );
}

// ignore: camel_case_types
class Tune_Player_App extends StatelessWidget {
  const Tune_Player_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
