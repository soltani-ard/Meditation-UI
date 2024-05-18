import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditation_ui/screens/login/startup_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'HelveticaNeue',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(elevation: 0, color: Colors.transparent),
        colorScheme: ColorScheme.fromSeed(seedColor: TColors.primary),
        useMaterial3: true,
      ),
      home: const StartupScreen(),
    );
  }
}
