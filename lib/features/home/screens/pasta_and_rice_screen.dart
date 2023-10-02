import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/custom_pizza_card.dart';

class PastaAndRiceScreen extends StatelessWidget {
  const PastaAndRiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NewWidget(),
              NewWidget(),
              Divider(),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Privacy policy and Terms of service 2019",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // MyWidget(),
        SizedBox(height: 30),
        Text(
          'Popular Pizza',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomPizzaCard(),
              CustomPizzaCard(),
              CustomPizzaCard(),
              CustomPizzaCard(),
              CustomPizzaCard(),
            ],
          ),
        ),
      ],
    );
  }
}
