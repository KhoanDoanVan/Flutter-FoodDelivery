import 'package:flutter/material.dart';
import 'package:flutter_fooddelivery/components/my_current_location.dart';
import 'package:flutter_fooddelivery/components/my_description_box.dart';
import 'package:flutter_fooddelivery/components/my_drawer.dart';
import 'package:flutter_fooddelivery/components/my_food_tile.dart';
import 'package:flutter_fooddelivery/components/my_silver_app_bar.dart';
import 'package:flutter_fooddelivery/components/my_tab_bar.dart';
import 'package:flutter_fooddelivery/models/food.dart';
import 'package:flutter_fooddelivery/models/restaurant.dart';
import 'package:flutter_fooddelivery/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  // sort out and return a list of food items belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(
            food: food, 
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food)
              )
            )
          );
        }
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxScrolled) => [
        MySilverAppBar(
          title: MyTabBar(tabController: _tabController),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(indent: 25, endIndent: 25,color: Theme.of(context).colorScheme.secondary,),
              const MyCurrentLocation(),
              const MyDescriptionBox()
            ],
          ),
           )
      ], 
      body: Consumer<Restaurant>(
        builder: (context, restaurent, child) => TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(restaurent.menu),
        ),
      )
      ),
    );
  }
}
