import 'package:flutter/material.dart';
import 'package:flutter_fooddelivery/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset(
              widget.food.imagePath,
              height: 300,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.food.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                Text(
                  widget.food.price.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  widget.food.description,
                ),
                const SizedBox(height: 10,),
                Text(
                  "Add-ons",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.food.avaiableAddons.length,
                  itemBuilder: (context, index) {
                    Addon addon = widget.food.avaiableAddons[index];
                    return CheckboxListTile(
                      title: Text(addon.name),
                      subtitle: Text(addon.price.toString()),
                      value: false,
                      onChanged: (value) {},
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}