import 'package:flutter/material.dart';
import 'package:flutter_fooddelivery/components/my_current_location.dart';
import 'package:flutter_fooddelivery/components/my_description_box.dart';
import 'package:flutter_fooddelivery/components/my_drawer.dart';
import 'package:flutter_fooddelivery/components/my_silver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxScrolled) => [
        MySilverAppBar(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(indent: 25, endIndent: 25,color: Theme.of(context).colorScheme.secondary,),
              const MyCurrentLocation(),
              const MyDescriptionBox()
            ],
          ),
           title: Text('Title')
           )
      ], 
      body: Container(color: Colors.blue,),),
    );
  }
}
