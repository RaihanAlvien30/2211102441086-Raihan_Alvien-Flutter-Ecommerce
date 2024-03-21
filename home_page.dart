import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('9:41'),
              Text('Luna Polar'),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text('What do you want for lunch?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text('Bread'),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              LeafBorderText('Gyoza Sapi', '4.8⭑'),
                              LeafBorderText('Moal', '4.8⭑'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text('Healthy'),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              LeafBorderText('Avocado Salad', '4.3⭑'),
                              LeafBorderText('Orange Asem', '4.5⭑'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text('Most Ordered'),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              LeafBorderText('Gyoza Sapi', '4.8⭑'),
                              LeafBorderText('Meal', '?'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LeafBorderText extends StatelessWidget {
  final String name;
  final String rating;

  const LeafBorderText(this.name, this.rating, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
        borderRadius: const BorderRadius.only(
         bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: const TextStyle(color: Colors.amber),
            ),
            const SizedBox(width: 4),
            Text(
              rating,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}