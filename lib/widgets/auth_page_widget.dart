import '../core/components/export_packages.dart';

class AuthPageWidget {
  static Widget authPageWidget({
    required BuildContext context,
    required imageOne,
     required imageTwo,
     required text,
     required bool? textOrField,
     required String? navigator,
  }) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            alignment: Alignment.bottomCenter,
            color: ConstColors.primary,
            child: FadeInLeft(
              child: Column(
                children: [
                  MyImageAssets.imageAsset(imageOne, 260, 301),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  MyImageAssets.imageAsset(imageTwo, 12, 301),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: SingleChildScrollView(
            child: Padding(
              padding: MyEdgeInsets.symmetric(h: 25),
              child: FadeInRight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          text,
                          style: MyTextStyle.bold(
                            size: 20,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        if (textOrField!)
                          Text(
                            "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                            style: MyTextStyle.regular(),
                            textAlign: TextAlign.center,
                            
                          )
                        else
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: MyEdgeInsets.only(top: 20),
                                height: getHeight(56),
                                width: getWidth(327),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(getWidth(25)),
                                      borderSide: BorderSide(
                                        color: Colors.grey.shade200,
                                      ),
                                    ),
                                    enabled: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                    Padding(
                      padding: MyEdgeInsets.only(top: 90),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeInUp(
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, navigator!);
                              },
                              child: Container(
                                height: getHeight(60),
                                width: getWidth(327),
                                decoration: MyDecoration.circular(
                                  radius: 10,
                                  color: ConstColors.primary,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Let's Continue",
                                  style: TextStyle(
                                    color: ConstColors.appBarTextColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
