import 'package:flutter/material.dart';
import 'package:laza/modules/home/home_layout.dart';
import 'package:laza/shared/components.dart';
import '../../shared/colors.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var newPasswordController = TextEditingController();
    var confirmPasswordController = TextEditingController();

    return Scaffold(
      appBar: defaultAppBar(),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Text(
                "New Password",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: defaultFormField(
                    controller: newPasswordController,
                    type: TextInputType.emailAddress,
                    onSubmit: () {},
                    validate: () {},
                    label: "Password",
                    context: context),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: defaultFormField(
                    controller: confirmPasswordController,
                    type: TextInputType.emailAddress,
                    onSubmit: () {},
                    validate: () {},
                    label: "Confirm Password",
                    context: context),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Text(
                  "Please write your new password.",
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
          text: "Reset Password",
          screenToGoTo: HomeLayout()),
    );
  }
}
