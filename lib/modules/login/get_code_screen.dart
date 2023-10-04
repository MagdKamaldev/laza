import 'package:flutter/material.dart';
import 'package:laza/modules/login/new_password_screen.dart';
import 'package:laza/shared/components.dart';

import '../../shared/colors.dart';

class GetCode extends StatelessWidget {
  const GetCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Text(
                "Verification Code",
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
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                        border: Border.all(color: cadetGrey, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        onSaved: (pin1) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                        border: Border.all(color: cadetGrey, width: 1),
                        borderRadius: BorderRadius.circular(
                            8), // Optional: Add border radius
                      ),
                      child: TextFormField(
                        onSaved: (pin2) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                        border: Border.all(color: cadetGrey, width: 1),
                        borderRadius: BorderRadius.circular(
                            8), // Optional: Add border radius
                      ),
                      child: TextFormField(
                        onSaved: (pin3) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                        border: Border.all(color: cadetGrey, width: 1),
                        borderRadius: BorderRadius.circular(
                            8), // Optional: Add border radius
                      ),
                      child: TextFormField(
                        onSaved: (pin4) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        autofocus: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "00:20",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "resend confirmation code.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: cadetGrey, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          )),
      bottomNavigationBar: defaultbottomNav(
          context: context,
          text: "Confirm Code",
          screenToGoTo: const NewPassword()),
    );
  }
}
