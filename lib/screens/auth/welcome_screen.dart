import 'package:fruits_hub/core/components/export_packages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: ConstColors.primary),
        backgroundColor: ConstColors.primary,
        elevation: 0,
      ),
      body: AuthPageWidget.authPageWidget(
        context: context,
        imageOne: ConstIcons.welcomePic,
        imageTwo: ConstIcons.ellipsis,
        text: "Get The Freshest Fruit Salad Combo",
        textOrField: true,
        navigator: '/auth',
      ),
    );
  }
}
