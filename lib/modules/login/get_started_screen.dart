import 'package:flutter/material.dart';
import 'package:laza/modules/login/sign_up_screen.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/components.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: antiFlashWhite,
        appBar: defaultAppBar(),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Let’s Get Started",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: Card(
                              color: const Color(0xFF4267B2),
                              child: Image.asset("assets/images/facebook.png")),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: Card(
                                color: const Color(0xFFEA4335),
                                child:
                                    Image.asset("assets/images/google.png"))),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: Card(
                                color: const Color(0xFF1DA1F2),
                                child:
                                    Image.asset("assets/images/twitter.png"))),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: cadetGrey),
                      ),
                      defaultTextButton(
                          function: () {},
                          text: "Signin",
                          context: context,
                          textColor: eerieBlack),
                    ],
                  ),
                ]),
          ),
        ),
        bottomNavigationBar: defaultbottomNav(
          context: context,
          text: "Create an Account",
          screenToGoTo: const SignUp(),
        ));
  }
}
