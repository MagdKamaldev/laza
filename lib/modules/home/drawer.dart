import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laza/shared/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Transform.rotate(
            angle: 3.14 / 2,
            child: Image.asset('assets/images/drawer_menu.png'),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Row(
            children: [
              CircleAvatar(
                  radius: size.width * 0.05,
                  child: Image.asset(
                    "assets/images/ronald_image.png",
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                width: size.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mrh Raju",
                    style: theme.bodyLarge!.copyWith(fontSize: 14),
                  ),
                  Row(
                    children: [
                      Text(
                        "Verified Profile",
                        style: theme.bodyLarge!
                            .copyWith(fontSize: 10, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Image.asset("assets/images/verified.png")
                    ],
                  )
                ],
              ),
              SizedBox(
                width: size.width * 0.055,
              ),
              Container(
                width: size.width * 0.18,
                height: size.height * 0.04,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "3 Orders",
                    style: theme.bodyLarge!
                        .copyWith(fontSize: 10, color: cadetGrey),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: size.height * 0.05),
          Row(
            children: [
              Image.asset("assets/images/brightness.png"),
              SizedBox(
                width: size.width * 0.04,
              ),
              Text("Dark Mode",
                  style: theme.bodyLarge!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w100)),
              const Spacer(),
              CupertinoSwitch(
                  value: false,
                  onChanged: (value) {
                    value = !value;
                  })
            ],
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          Row(
            children: [
              Image.asset("assets/images/info_circle.png"),
              SizedBox(
                width: size.width * 0.04,
              ),
              Text("Account Information",
                  style: theme.bodyLarge!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w100)),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            children: [
              Image.asset("assets/images/Lock.png"),
              SizedBox(
                width: size.width * 0.04,
              ),
              Text("Password",
                  style: theme.bodyLarge!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w100)),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/small_bag.png",
                fit: BoxFit.cover,
              ),
              // Replace with your SVG path

              SizedBox(
                width: size.width * 0.04,
              ),
              Text("Order",
                  style: theme.bodyLarge!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w100)),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/small_wallet.png",
                fit: BoxFit.cover,
              ),
              // Replace with your SVG path

              SizedBox(
                width: size.width * 0.04,
              ),
              Text("My Cards",
                  style: theme.bodyLarge!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w100)),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/small_heart.png",
                fit: BoxFit.cover,
              ),
              // Replace with your SVG path

              SizedBox(
                width: size.width * 0.04,
              ),
              Text("Wishlist",
                  style: theme.bodyLarge!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w100)),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/settings.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              Text("Settings",
                  style: theme.bodyLarge!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w100)),
            ],
          ),
          SizedBox(
            height: size.height * 0.25,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/logout.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              Text("Logout",
                  style: theme.bodyLarge!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: Colors.red)),
            ],
          ),
        ]),
      ),
    );
  }
}
