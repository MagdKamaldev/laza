import 'package:flutter/material.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Reviews",
          style: theme.bodyLarge!.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "245 Reviews",
                    style: theme.bodyMedium,
                  ),
                  Row(
                    children: [
                      Text(
                        "4.8",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      Image.asset("assets/images/rating.png")
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Image.asset("assets/images/add_review_button.png"),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SizedBox(
            height: size.height * 0.7,
            child: ListView.separated(
                itemBuilder: (context, index) =>
                    ratingItem(context: context, size: size),
                separatorBuilder: (context, index) => SizedBox(
                      height: size.height * 0.02,
                    ),
                itemCount: 4),
          )
        ]),
      ),
    );
  }

  Widget ratingItem({
    required BuildContext context,
    required Size size,
  }) =>
      Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset("assets/images/ronald_image.png"),
              ),
              SizedBox(
                width: size.width * 0.03,
              ),
              Column(
                children: [
                  Text(
                    "Ronald Richards",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/clock.png"),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      Text(
                        "13 Sep, 2020",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.grey[500]),
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "4.8",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      Text(
                        "rating",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.004,
                  ),
                  Image.asset("assets/images/rating.png")
                ],
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.grey, fontSize: 15),
          ),
        ],
      );
}
