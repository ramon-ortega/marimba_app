import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marimba_app/src/presentation/screens/marimba_screen.dart';
import 'package:marimba_app/src/presentation/screens/piano_screen.dart';
import 'package:marimba_app/src/presentation/screens/settings_screen.dart';
import 'package:marimba_app/src/presentation/screens/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marimba App',
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome': (_) => const WelcomeScreen(),
        '/marimba': (_) => const MarimbaScreen(),
        '/piano': (_) => const PianoScreen(),
      },
      initialRoute: '/marimba',
    );
  }
}
