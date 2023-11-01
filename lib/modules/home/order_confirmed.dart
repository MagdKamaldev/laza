import 'package:flutter/material.dart';
import 'package:laza/modules/home/drawer.dart';
import 'package:laza/shared/components.dart';

class OrderConfirmed extends StatelessWidget {
  const OrderConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
      ),
      drawer: const AppDrawer(),
      body: Column(children: [
        SizedBox(
          height: size.height * 0.11,
        ),
        SizedBox(
            height: size.height * 0.3,
            width: size.width,
            child: Image.asset("assets/images/order_confirmed.png")),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Order Confirmed",
                style: theme.bodyLarge!.copyWith(fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Your order has been confirmed, we will send you confirmation email shortly.",
                style:
                    theme.bodyLarge!.copyWith(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.14,
              ),
              defaultButton(
                  function: () {
                    Navigator.pop(context);
                  },
                  context: context,
                  text: "Go to orders",
                  color: Colors.grey[200]!,
                  textColor: Colors.grey)
            ],
          ),
        ),
      ]),
      bottomNavigationBar:
          defaultbottomNav(context: context, text: "Contiinue Shopping"),
    );
  }
}
