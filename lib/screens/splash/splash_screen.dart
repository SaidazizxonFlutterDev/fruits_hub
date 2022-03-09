import 'package:fruits_hub/core/components/export_packages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: const WelcomePage(),
        duration: 3000,
        imageSize: (MediaQuery.of(context).size.height * 0.35).toInt(),
        imageSrc: ConstIcons.mainIcon,
        textType: TextType.TyperAnimatedText,
        backgroundColor: Colors.white,
      ),
    );
  }
}
