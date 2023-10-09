// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:laza/modules/home/home_layout.dart';
import 'package:laza/shared/components.dart';

class PrdouctScreen extends StatelessWidget {
  final String description;
  final String price;

  PrdouctScreen({super.key, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      "assets/images/product_screen_main.png",
                      fit: BoxFit.cover,
                      height: size.height * 0.46,
                      width: size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/product_bag.png",
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                )
              ],
            ),
            Image.asset("assets/images/product_nike.png"),
          ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Men's Printed Pullover Hoodie",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    const Spacer(),
                    Text(
                      "Price       ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Nike Club Fleece",
                      style: Theme.of(context).textTheme.bodyLarge!,
                    ),
                    const Spacer(),
                    Text(
                      "\$120",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/images/product_small_1.png",
                        width: size.width * 0.215,
                        height: size.height * 0.1,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.012,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/images/product_small_2.png",
                        width: size.width * 0.215,
                        height: size.height * 0.1,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.012,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/images/product_small_3.png",
                        width: size.width * 0.215,
                        height: size.height * 0.1,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.012,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/images/product_small_4.png",
                        width: size.width * 0.215,
                        height: size.height * 0.1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "Size",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      "Size guide",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  children: [
                    Container(
                        width: size.width * 0.155,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "S",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        )),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                        width: size.width * 0.155,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "M",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        )),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                        width: size.width * 0.155,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "L",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        )),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                        width: size.width * 0.155,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "XL",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        )),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                        width: size.width * 0.155,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "2XL",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Description",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: size.height * 0.008,
                ),
                Text(
                  "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with...",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.grey),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Reviews",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      "View all",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: defaultbottomNav(
          context: context, text: "Add to Cart", screenToGoTo: HomeLayout()),
    );
  }
}
