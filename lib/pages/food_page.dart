import 'package:flutter/material.dart';
import 'package:flutter_fooddelivery/components/my_button.dart';
import 'package:flutter_fooddelivery/models/food.dart';
import 'package:flutter_fooddelivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  
  FoodPage({super.key, required this.food}){
    // initialize selected addons to be false
    for (Addon addon in food.avaiableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    List<Addon> currentSelectedAddons = [];
    for(Addon addon in widget.food.avaiableAddons) {
      if(widget.selectedAddons[addon] == true) {
        currentSelectedAddons.add(addon);
      }
    }

    context.read<Restaurant>().addToCart(food, currentSelectedAddons);

    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold ui
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    widget.food.imagePath,
                    height: 350,
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
                        '\$'+widget.food.price.toString(),
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
                      Divider(color: Theme.of(context).colorScheme.secondary,),
                      const SizedBox(height: 10,),
                      Text(
                        "Add-ons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.avaiableAddons.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.avaiableAddons[index];
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$'+addon.price.toString(),
                                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                                ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
            
                MyButton(
                  text: 'Add to Cart', 
                  onTap: () => addToCart(widget.food, widget.selectedAddons)
                ),

                const SizedBox(height: 25,)
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 1,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                 icon: Icon(Icons.arrow_back_ios_rounded)
              ),
            ),
          ),
        )
      ],
    );
  }
}