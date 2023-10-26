import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/modules/home/add_new_card.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/components.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment",
          style: theme.bodyLarge!.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Image.asset("assets/images/visa_orange.png"),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Image.asset("assets/images/visa_green.png"),
                const SizedBox(
                  width: 20,
                ),
              ]),
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigateTo(context, const AddCard());
                    },
                    child: Container(
                      width: double.infinity,
                      height: size.height * 0.065,
                      decoration: BoxDecoration(
                        color: tropicalIndigo2,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: tropicalIndigo, width: 2),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Plus.png"),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Add new card',
                              style: theme.bodyLarge!.copyWith(
                                  color: tropicalIndigo, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "Card Owner",
                    style: theme.bodyLarge!.copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          style: theme.bodyMedium,
                          decoration: const InputDecoration(
                            hintText: "Mrh Raju",
                            hintStyle: TextStyle(
                                fontSize: 14, fontFamily: "InterLight"),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16.0),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "Card Number",
                    style: theme.bodyLarge!.copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          style: theme.bodyMedium,
                          decoration: const InputDecoration(
                            hintText: "5254 7634 8734 7690",
                            hintStyle: TextStyle(
                                fontSize: 14, fontFamily: "InterLight"),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16.0),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Exp",
                            style: theme.bodyLarge!.copyWith(fontSize: 20),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  style: theme.bodyMedium,
                                  decoration: const InputDecoration(
                                    hintText: "24/24",
                                    hintStyle: TextStyle(
                                        fontSize: 14, fontFamily: "InterLight"),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 16.0),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.08,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cvv",
                            style: theme.bodyLarge!.copyWith(fontSize: 20),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  style: theme.bodyMedium,
                                  decoration: const InputDecoration(
                                    hintText: "000",
                                    hintStyle: TextStyle(
                                        fontSize: 14, fontFamily: "InterLight"),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 16.0),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Save card info",
                        style: theme.bodyLarge!.copyWith(fontSize: 18),
                      ),
                      const Spacer(),
                      CupertinoSwitch(
                          value: true,
                          onChanged: (bool value) {
                            setState(() {
                              value = !value;
                            });
                          })
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          defaultbottomNav(context: context, text: "Save Card"),
    );
  }
}
