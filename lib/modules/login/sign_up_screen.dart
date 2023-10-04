import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/modules/login/login_screen.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/components.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var userNameController = TextEditingController();
    return Scaffold(
      backgroundColor: antiFlashWhite,
      appBar: defaultAppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    defaultFormField(
                        controller: userNameController,
                        type: TextInputType.name,
                        onSubmit: () {},
                        validate: () {},
                        label: "Username",
                        context: context,
                        suffix: Icons.check,
                        suffixColor: Colors.green),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      onSubmit: () {},
                      validate: () {},
                      label: "Password",
                      context: context,
                      suffixText: "Strong",
                      suffixTextColor: Colors.green,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        onSubmit: () {},
                        validate: () {},
                        label: "Email Adress",
                        context: context,
                        suffix: Icons.check,
                        suffixColor: Colors.green),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: defaultbottomNav(
          context: context, text: "Sign Up", screenToGoTo: const LoginScreen()),
    );
  }
}
