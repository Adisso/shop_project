import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shop_project/screens/home/home_screen.dart';
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
    // Get the firebase user and set first route
    User? firebaseUser = FirebaseAuth.instance.currentUser;
    String? firstRoute;
    if (firebaseUser != null) {
      firstRoute = HomeScreen.routeName;
    } else {
      firstRoute = SplashScreen.routeName;
    }
    return MaterialApp(
      scaffoldMessengerKey: CustomSnackBar.messengerKey,
      navigatorKey: NavigationService.navigationKey,
      debugShowCheckedModeBanner: false,
      title: 'Walejro',
      theme: theme(),
      initialRoute: firstRoute,
      routes: routes,
    );
  }
}
