import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/shared/components.dart';

class AdressScreen extends StatefulWidget {
  const AdressScreen({super.key});

  @override
  State<AdressScreen> createState() => _AdressScreenState();
}

class _AdressScreenState extends State<AdressScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Address",
          style: theme.bodyLarge!.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
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
                      hintText: "Type your name",
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
              height: size.height * 0.03,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Country",
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
                              hintText: "Bangladesh",
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
                      "City",
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
                              hintText: "Sylhet",
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
              height: size.height * 0.03,
            ),
            Text(
              "Phone Number",
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
                      hintText: "+880 1453-987533",
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
              height: size.height * 0.03,
            ),
            Text(
              "Address",
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
                      hintText: "Chhatak, Sunamgonj 12/8AB",
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
              height: size.height * 0.03,
            ),
            Row(
              children: [
                Text(
                  "Save as primary address",
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
      bottomNavigationBar:
          defaultbottomNav(context: context, text: "Save Address"),
    );
  }
}
