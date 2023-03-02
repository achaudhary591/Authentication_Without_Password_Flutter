import 'package:flutter/material.dart';
import 'package:magic_sdk/magic_sdk.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController controller = TextEditingController();

  authenticate(BuildContext context) async{
    final token = await Magic.instance.auth.loginWithMagicLink(email: controller.text);
    print(token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              'Welcome'.text.xl4.bold.make(),
              VxTextField(
                controller: controller,
                borderType: VxTextFieldBorderType.roundLine,
                borderColor: Vx.purple500,
                hint: 'Enter em@il',
              ).p32(),
              ElevatedButton(
                onPressed: () {
                  authenticate(context);
                },
                child: 'Login'.text.bold.make(),
              ).wFourFifth(context),
            ],
          ).p16().centered(),
        ],
      ),
    );
  }

  Widget background() {
    return VxBox().gradientVia(
      from: Vx.purple200,
      via: Vx.purple400,
      to: Vx.purple600,
    ).make();
  }
}
