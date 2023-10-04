import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/modules/home/home_layout.dart';
import 'package:laza/modules/login/forgot_password_screen.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var userNameController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "Please enter your data to continue",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: cadetGrey),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      defaultFormField(
                          controller: userNameController,
                          type: TextInputType.emailAddress,
                          onSubmit: () {},
                          validate: () {},
                          label: "Username",
                          context: context,
                          suffix: Icons.check,
                          suffixColor: Colors.green),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      defaultFormField(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          onSubmit: () {},
                          validate: () {},
                          label: "Password",
                          context: context,
                          suffixText: "Strong",
                          suffixTextColor: Colors.green),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          defaultTextButton(
                              function: () {
                                navigateTo(context, const ForgotPassword());
                              },
                              text: "Forgot password ?",
                              context: context,
                              textColor: Colors.red),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            const Text("Remember me"),
                            const Spacer(),
                            CupertinoSwitch(
                              value: true,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.085,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Text(
                        "By connecting your account confirm that you ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: cadetGrey, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "agree with our ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: cadetGrey, fontSize: 14),
                          ),
                          Text(
                            "Terms and conditions",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
      bottomNavigationBar: defaultbottomNav(
          context: context, text: "Login", screenToGoTo:  HomeLayout()),
    );
  }
}
