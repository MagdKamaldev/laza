import 'package:flutter/material.dart';
import 'package:laza/shared/components.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add New Card",
          style: theme.bodyLarge!.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                    width: size.width * 0.25,
                    child: Image.asset("assets/images/master_card_icon.png")),
                SizedBox(
                  width: size.width * 0.065,
                ),
                SizedBox(
                    width: size.width * 0.25,
                    child: Image.asset("assets/images/paypal_icon.png")),
                SizedBox(
                  width: size.width * 0.065,
                ),
                SizedBox(
                    width: size.width * 0.25,
                    child: Image.asset(
                      "assets/images/Bank_icon.png",
                    )),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
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
                      hintStyle:
                          TextStyle(fontSize: 14, fontFamily: "InterLight"),
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
                      hintStyle:
                          TextStyle(fontSize: 14, fontFamily: "InterLight"),
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
          ],
        ),
      ),
      bottomNavigationBar: defaultbottomNav(context: context, text: "Add Card"),
    );
  }
}
