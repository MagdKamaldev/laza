import 'package:flutter/material.dart';
import 'package:laza/modules/login/get_code_screen.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/components.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Text(
                "Forgot Password",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.asset("assets/images/password.png")),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ), 
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    onSubmit: () {},
                    validate: () {},
                    label: "Email Adress",
                    context: context),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Text(
                  "Please write your email to receive a confirmation code to set a new password.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: cadetGrey, fontSize: 14),
                ),
              )
            ],
          )),
      bottomNavigationBar: defaultbottomNav(
          context: context,
          text: "Confirm Mail",
          screenToGoTo: const GetCode()),
    );
  }
}
