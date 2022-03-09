import 'package:fruits_hub/core/components/export_packages.dart';



class GenerateRoute {
   Route? onGenerate(RouteSettings settings) {
    // var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

        case '/welcome':
        return MaterialPageRoute(
          builder: (context) => const AuthenticationPage(),
        );

      case '/auth':
        return MaterialPageRoute(
          builder: (context) => const AuthenticationPage(),
        );

      default:
    }
    return null;
  }
}
