import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'routes.dart';
import 'screens/splash_screen/splash_screen.dart';
import 'components/custom_snack_bar.dart';
import 'theme.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      scaffoldMessengerKey: CustomSnackBar.messengerKey,
      navigatorKey: NavigationService.navigationKey,
      debugShowCheckedModeBanner: false,
      title: 'Walejro',
      theme: theme(),
      //home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
