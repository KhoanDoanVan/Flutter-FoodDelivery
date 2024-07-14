import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fooddelivery/models/cart_item.dart';
import 'package:flutter_fooddelivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger", 
      description: "Juicy beef patty, melted cheese, fresh lettuce, tomatoes, and onions.",
      imagePath: "lib/images/burgers/classic_chesseburger.jpeg", 
      price: 2.99, 
      category: FoodCategory.burgers, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "BBQ Bacon Chicken Burger", 
      description: "Grilled chicken breast, avocado slices, crispy bacon, and tangy ranch sauce.",
      imagePath: "lib/images/burgers/bbq_bacon_chicken_burger.jpeg", 
      price: 5.99, 
      category: FoodCategory.burgers, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Veggie Delight Burger", 
      description: "Veggie patty, grilled mushrooms, spinach, feta cheese, and garlic aioli.",
      imagePath: "lib/images/burgers/veggie_delight_burger.jpeg", 
      price: 7.99, 
      category: FoodCategory.burgers, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Spicy Black Bean Burger", 
      description: "Spicy black bean burger, jalapeños, guacamole, and pepper jack cheese.",
      imagePath: "lib/images/burgers/spicy_black_bean_burger.jpeg", 
      price: 4.99, 
      category: FoodCategory.burgers, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Double Trouble Burger", 
      description: "Double beef patty, cheddar cheese, BBQ sauce, and crispy onion rings.",
      imagePath: "lib/images/burgers/double_trouble_burger.jpeg", 
      price: 3.99, 
      category: FoodCategory.burgers, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),


    //dessert
    Food(
      name: "Decadent Chocolate Cake", 
      description: "Rich chocolate cake, creamy frosting, topped with chocolate shavings and strawberries.",
      imagePath: "lib/images/desserts/decandent_chocolate_cake.jpeg", 
      price: 1.99, 
      category: FoodCategory.desserts, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Berry Bliss Cheesecake", 
      description: "Classic New York cheesecake, graham cracker crust, and berry compote topping.",
      imagePath: "lib/images/desserts/berry_bliss_cheesecake.jpeg", 
      price: 1.99, 
      category: FoodCategory.desserts, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Old-Fashioned Apple Pie", 
      description: "Warm apple pie, flaky crust, cinnamon, and a scoop of vanilla.",
      imagePath: "lib/images/desserts/old_fashion_apple_pie.jpeg", 
      price: 1.99, 
      category: FoodCategory.desserts, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Heavenly Tiramisu", 
      description: "Velvety tiramisu, coffee-soaked ladyfingers, mascarpone cheese, and cocoa dusting.",
      imagePath: "lib/images/desserts/heavenly_tiramisu.jpeg", 
      price: 0.99, 
      category: FoodCategory.desserts, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Raspberry Panna Cotta", 
      description: "Silky panna cotta, raspberry coulis, fresh mint leaves, and edible flowers.",
      imagePath: "lib/images/desserts/raspberry_panna_cotta.jpeg", 
      price: 2.99, 
      category: FoodCategory.desserts, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),

    // drinks
    Food(
      name: "Minty Lemonade Sparkler", 
      description: "Refreshing lemonade, fresh mint, sparkling water, and a hint of honey.",
      imagePath: "lib/images/drinks/minty_lemonade_sparkler.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Caramel Iced Macchiato", 
      description: "Iced caramel macchiato, creamy milk, espresso, and caramel drizzle.",
      imagePath: "lib/images/drinks/caramel_iced_macchiato.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Tropical Mango Smoothie", 
      description: "Tropical smoothie, mango, pineapple, coconut milk, and a splash of lime.",
      imagePath: "lib/images/drinks/tropical_mango_smoothie.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Classic Mojito", 
      description: "Classic mojito, white rum, lime juice, soda water, and mint.",
      imagePath: "lib/images/drinks/classic_mojito.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Ginger Green Tea Cooler", 
      description: "Chilled green tea, honey, lemon slices, and fresh ginger.",
      imagePath: "lib/images/drinks/ginger_green_tea_cooler.jpeg", 
      price: 0.99, 
      category: FoodCategory.drinks, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),


    // salads
    Food(
      name: "Caesar's Delight", 
      description: "Crisp romaine lettuce, Caesar dressing, parmesan cheese, and crunchy croutons.",
      imagePath: "lib/images/salads/caesar's_delight.jpeg", 
      price: 1.99, 
      category: FoodCategory.salads, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Garden Fresh Salad", 
      description: "Mixed greens, cherry tomatoes, cucumbers, red onions, and balsamic vinaigrette.",
      imagePath: "lib/images/salads/garden_fresh_salad.jpeg", 
      price: 2.99, 
      category: FoodCategory.salads, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Spinach and Goat Cheese Salad", 
      description: "Spinach, goat cheese, candied pecans, and raspberry vinaigrette dressing.",
      imagePath: "lib/images/salads/spinach_and_goat_cheese_salad.jpeg", 
      price: 3.99, 
      category: FoodCategory.salads, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Beet and Arugula Salad", 
      description: "Arugula, roasted beets, walnuts, feta cheese, and honey mustard dressing.",
      imagePath: "lib/images/salads/beet_and_arugula_salad.jpeg", 
      price: 2.99, 
      category: FoodCategory.salads, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Kale and Quinoa Power Bowl", 
      description: "Kale, quinoa, avocado, cranberries, and lemon tahini dressing.",
      imagePath: "lib/images/salads/kale_and_quinoa_power_bowl.jpeg", 
      price: 1.99, 
      category: FoodCategory.salads, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),

    // sides
    Food(
      name: "Classic French Fries", 
      description: "Crispy french fries, sea salt, and a side of ketchup.",
      imagePath: "lib/images/sides/classic_french_fries.webp", 
      price: 0.99, 
      category: FoodCategory.sides, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Spiced Sweet Potato Fries", 
      description: "Sweet potato fries, lightly seasoned with paprika and garlic powder.",
      imagePath: "lib/images/sides/spiced_sweet_potato_fries.jpeg", 
      price: 0.99, 
      category: FoodCategory.sides, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Steamed Lemon Broccoli", 
      description: "Steamed broccoli, drizzled with olive oil, lemon zest, and sea salt.",
      imagePath: "lib/images/sides/steamed_lemon_broccoli.jpeg", 
      price: 0.99, 
      category: FoodCategory.sides, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Creamy Garlic Mashed Potatoes", 
      description: "Garlic mashed potatoes, creamy butter, and a sprinkle of chives.",
      imagePath: "lib/images/sides/creamy_garlic_mashed_potatoes.jpeg", 
      price: 0.99, 
      category: FoodCategory.sides, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),
    Food(
      name: "Grilled Parmesan Asparagus", 
      description: "Grilled asparagus, olive oil, lemon juice, and parmesan cheese.",
      imagePath: "lib/images/sides/grilled_parmesan_asparagus.jpeg", 
      price: 0.99, 
      category: FoodCategory.sides, 
      avaiableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ]
    ),

  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if(cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons)
      );
    }
    
    // change the ui
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1) {
      if(_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for(CartItem cartItem in _cart) {
      var itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for(CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }


  void clearCart() {
    _cart.clear();
    notifyListeners();
  }


  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // package: flutter pub add intl
    var formmattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formmattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for(final cartItem in _cart) {
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if(cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
    }

    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // fotmat double value into money
  String _formatPrice(price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
  }
}