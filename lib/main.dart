import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_project/screens/profile/profile_screen.dart';
import 'routes.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
      overlays: []).then(
    (_) => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Walejro',
      theme: theme(),
      //home: const SplashScreen(),
      initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}
