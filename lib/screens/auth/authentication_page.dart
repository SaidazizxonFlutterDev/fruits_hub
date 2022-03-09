import 'package:fruits_hub/core/components/export_packages.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColors.primary,
        elevation: 0,
      ),
      body: AuthPageWidget.authPageWidget(
        context: context,
        imageOne: ConstIcons.welcomePic,
        imageTwo: ConstIcons.ellipsis,
        text: "What is your first name?",
        textOrField: false,
        navigator: '/welcome',
      ),
    );
  }
}
