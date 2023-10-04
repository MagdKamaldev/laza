// ignore_for_file: must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/modules/home/cart_screen.dart';
import 'package:laza/modules/home/home_screen.dart';
import 'package:laza/modules/home/wallet_screen.dart';
import 'package:laza/modules/home/whitlist_screen.dart';
import 'package:laza/shared/colors.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
     HomeScreen(),
    WhitList(),
    const CartScreen(),
    const Wallet()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Image.asset("assets/images/drawer_menu.png"),
          ],
        ),
        actions: [
          Image.asset("assets/images/cart.png"),
          const SizedBox(
            width: 10,
          ),
        ],
        toolbarHeight: 80,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: Row(children: [
        GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = 0;
            });
          },
          child: SizedBox(
              width: size.width * 0.25,
              child: currentIndex == 0
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.07),
                      child: Text(
                        "Home",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: tropicalIndigo),
                      ),
                    )
                  : SvgPicture.asset("assets/images/Vector.svg")),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = 1;
            });
          },
          child: SizedBox(
              width: size.width * 0.25,
              child: currentIndex == 1
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Text(
                        "Whitlist",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: tropicalIndigo),
                      ),
                    )
                  : SvgPicture.asset("assets/images/Heart.svg")),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = 2;
            });
          },
          child: SizedBox(
              width: size.width * 0.25,
              child: currentIndex == 2
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.08),
                      child: Text(
                        "Cart",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: tropicalIndigo),
                      ),
                    )
                  : SvgPicture.asset("assets/images/Bag.svg")),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = 3;
            });
          },
          child: SizedBox(
              width: size.width * 0.25,
              child: currentIndex == 3
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.07),
                      child: Text(
                        "Wallet",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: tropicalIndigo),
                      ),
                    )
                  : SvgPicture.asset("assets/images/Wallet.svg")),
        ),
      ]),
    );
  }
}
