import 'package:flutter/material.dart';
import 'package:laza/modules/home/adress_screen.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/components.dart';

class CartLayout extends StatelessWidget {
  const CartLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.35,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 2,
              ),
              itemBuilder: (context, index) =>
                  productCard(size: size, theme: theme),
              itemCount: 2,
            ),
          ),
          Row(
            children: [
              Text(
                "Delivery Address",
                style: theme.bodyLarge!.copyWith(fontSize: 20),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    navigateTo(context, const AdressScreen());
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: size.height * 0.02,
                  ))
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            children: [
              Stack(alignment: Alignment.center, children: [
                Image.asset(
                  "assets/images/adress_target.png",
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                CircleAvatar(
                  backgroundColor: coral,
                  radius: size.width * 0.028,
                  child: Image.asset(
                    "assets/images/adress_marker.png",
                    width: 35,
                    height: 35,
                  ),
                ),
              ]),
              SizedBox(
                width: size.width * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chhatak, Sunamgonj 12/8AB",
                    style: theme.bodyLarge!.copyWith(fontSize: 13),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "Sylhet",
                    style: theme.bodyLarge!
                        .copyWith(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: size.width * 0.038,
                child: Icon(
                  Icons.check,
                  color: antiFlashWhite,
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            children: [
              Text(
                "Payment Method",
                style: theme.bodyLarge!.copyWith(fontSize: 20),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: size.height * 0.02,
                  ))
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/visa_classic.png",
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: size.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Visa Classic",
                    style: theme.bodyLarge!.copyWith(fontSize: 13),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "**** 7690",
                    style: theme.bodyLarge!
                        .copyWith(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: size.width * 0.038,
                child: Icon(
                  Icons.check,
                  color: antiFlashWhite,
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            "Order Info",
            style: theme.bodyLarge!.copyWith(fontSize: 20),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Subtotal",
                    style: theme.bodyLarge!
                        .copyWith(fontSize: 13, color: Colors.grey),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "Shipping Cost",
                    style: theme.bodyLarge!
                        .copyWith(fontSize: 13, color: Colors.grey),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "Total",
                    style: theme.bodyLarge!
                        .copyWith(fontSize: 13, color: Colors.grey),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$110",
                    style: theme.bodyLarge!.copyWith(
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "\$10",
                    style: theme.bodyLarge!.copyWith(
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "\$120",
                    style: theme.bodyLarge!.copyWith(
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget productCard({required Size size, required TextTheme theme}) =>
      SizedBox(
        width: size.width * 0.8,
        height: size.height * 0.165,
        child: Card(
          color: antiFlashWhite,
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.04,
                ),
                Image.asset("assets/images/cart_product.png"),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Men's Tie-Dye T-Shirt ",
                      style: theme.bodyLarge!.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      width: size.height * 0.03,
                    ),
                    Text(
                      "Nike Sportswear",
                      style: theme.bodyLarge!.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Text(
                      "\$45 (-\$4.00 Tax)",
                      style: theme.bodyLarge!
                          .copyWith(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: size.height * 0.08,
                    ),
                    SizedBox(
                      width: size.width * 0.55,
                      height: size.height * 0.055,
                      child: Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: antiFlashWhite,
                              radius: size.height * 0.017,
                              child:
                                  Image.asset("assets/images/decrement.png")),
                          SizedBox(
                            width: size.width * 0.025,
                          ),
                          Text(
                            "1",
                            style: theme.bodyLarge!
                                .copyWith(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            width: size.width * 0.025,
                          ),
                          CircleAvatar(
                              backgroundColor: antiFlashWhite,
                              radius: size.height * 0.017,
                              child:
                                  Image.asset("assets/images/increment.png")),
                          const Spacer(),
                          CircleAvatar(
                              backgroundColor: antiFlashWhite,
                              radius: size.height * 0.017,
                              child: Image.asset(
                                  "assets/images/delete_from_cart.png")),
                          SizedBox(
                            width: size.width * 0.04,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
}
