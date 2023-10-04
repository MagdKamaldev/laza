// ignore_for_file: use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/shared/colors.dart';

class HomeScreen extends StatelessWidget {
  List<String> images = [
    "assets/images/nike_product.png",
    "assets/images/trial.png",
    "assets/images/nike_top.png",
    "assets/images/trial_2.png"
  ];
  List<String> descriptions = [
    "Nike Sportswear Club Fleece",
    "Trail Running Jacket Nike Windrunner",
    "Training Top Nike Sport Clash",
    "Trail Running Jacket Nike Windrunner"
  ];
  List<String> prices = ["\$99", "\$99", "\$99", "\$99"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 30),
                ),
                Text(
                  "Welcome to Laza.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.grey),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/search_icon.png",
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: tropicalIndigo,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: Image.asset("assets/images/voice_search.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                Row(
                  children: [
                    Text(
                      "Choose Brand",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      "View All",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                "assets/images/Adidas.png",
              ),
              SizedBox(
                width: size.width * 0.025,
              ),
              Image.asset(
                "assets/images/Nike.png",
              ),
              SizedBox(
                width: size.width * 0.025,
              ),
              Image.asset(
                "assets/images/Fila.png",
              ),
              SizedBox(
                width: size.width * 0.025,
              ),
              Image.asset(
                "assets/images/Puma.png",
              ),
              const SizedBox(
                width: 15,
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.025,
                ),
                Row(
                  children: [
                    Text(
                      "New Arrival",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      "View All",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 0,
              childAspectRatio: 0.652,
              children: List.generate(
                4,
                (index) => productItem(
                    context: context,
                    price: prices[index],
                    image: images[index],
                    description: descriptions[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget productItem({
    required BuildContext context,
    required String price,
    required String image,
    required String description,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(
                image,
                height: 240,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset("assets/images/Heart.svg"),
              )
            ],
          ),
          Text(description),
          Text(price)
        ],
      );
}
