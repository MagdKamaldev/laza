import 'package:flutter/material.dart';
import 'package:laza/modules/login/get_started_screen.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/components.dart';

class ChooseGender extends StatelessWidget {
  const ChooseGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  tropicalIndigogradient,
                  tropicalIndigo,
                ],
              ),
            ),
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: Image.asset("assets/images/model.png")),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height * 0.29,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Text(
                                "Look Good, Feel Good",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Create your individual & unique style and look amazing everyday.",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: cadetGrey,
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  defaultButton(
                                      function: () {},
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      context: context,
                                      text: "Men",
                                      color: antiFlashWhite,
                                      textColor: cadetGrey,
                                      height: 70,
                                      radius: 10),
                                  const Spacer(),
                                  defaultButton(
                                      function: () {},
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height: 70,
                                      context: context,
                                      text: "Women",
                                      color: tropicalIndigo,
                                      textColor: white,
                                      radius: 10),
                                ],
                              ),
                              defaultTextButton(
                                  function: () {
                                    navigateTo(context, const GetStarted());
                                  },
                                  text: "Skip",
                                  context: context,
                                  textColor: cadetGrey)
                            ],
                          ),
                        ),
                      )),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
