import 'package:flutter/material.dart';
import 'package:laza/shared/colors.dart';
import 'package:laza/shared/components.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    double sliderValue = 3.0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Review",
          style: theme.bodyLarge!.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
                height: size.height * 0.02,
              ),
              Text(
                "How was your experience ?",
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        style: theme.bodyMedium,
                        decoration: const InputDecoration(
                          hintText: "Describe your experience ?",
                          hintStyle:
                              TextStyle(fontSize: 14, fontFamily: "InterLight"),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.23,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                "Star",
                style: theme.bodyLarge!.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                children: [
                  Text(
                    "0.0",
                    style: theme.bodyMedium,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  SizedBox(
                    width: size.width * 0.73,
                    child: Slider(
                      value: sliderValue,
                      activeColor: Colors.grey[300],
                      thumbColor: tropicalIndigo,
                      inactiveColor: Colors.grey[300],
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                      min: 0.0,
                      max: 5.0,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    "5.0",
                    style: theme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: defaultbottomNav(
        context: context,
        text: "Submit Review",
      ),
    );
  }
}
