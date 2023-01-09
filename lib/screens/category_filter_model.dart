import 'dart:developer';

import 'package:dswapp/models/price_model.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_drawer.dart';


class FilterScreen extends StatelessWidget {
  static const routeName = '/filter';

  const FilterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          appBar: const CustomAppBar(),
          endDrawer: NavigationDrawer(),

        body: Padding(

          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                  'Date',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,

                ),

              ),
              const SizedBox(
                height: 15,
              ),
              CustomDateFilter(prices:Date.dates,),
              const SizedBox(
                height: 30,
              ),
              const Text(
                  'Society',
                style: TextStyle(
                fontSize: 25,
                  fontWeight: FontWeight.w700,
              ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomSocietyFilter(prices:Date.arr,),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'Category',
                style: TextStyle(
                fontSize: 25,
                  fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomCategoryFilter(prices:Date.arr2),

            ],
          ),
        )
      ),
    );
  }
}
class CustomDateFilter extends StatelessWidget{
  const CustomDateFilter({Key? key,required this.prices}): super(key: key);
  final List<Date> prices;
  // MaterialStateProperty<Color> getColor(Color color,Color colorPressed)
  // {
  //   getColor(Set<MaterialState> states){
  //     if(states.contains(MaterialState.pressed))
  //       {
  //         return colorPressed;
  //       }
  //     else
  //       {
  //         return color;
  //       }
  //
  //   }
  //   //return MaterialStateProperty.resolveWith((states) => getColor);
  // }
  @override
  Widget build(BuildContext context) {
    return Row(children:
      prices.map(
              (price)=>GestureDetector(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(price.dat,
                    style:const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              )
      )
      .toList(),



    );
  }
}
class CustomSocietyFilter extends StatelessWidget{
  const CustomSocietyFilter({Key? key,required this.prices}): super(key: key);
  final List<Date> prices;
  @override
  Widget build(BuildContext context) {
    return
        Wrap(
          spacing: 10,
            runSpacing: 20,
            children:prices.map
              (
                  (price)=>Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(price.dat,
                  style:const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ).toList(),

        );

  }
}

class CustomCategoryFilter extends StatelessWidget{
  const CustomCategoryFilter({Key? key,required this.prices}): super(key: key);
  final List<Date> prices;
  @override
  Widget build(BuildContext context) {
    return Row(children:
    prices.map(
          (price)=>GestureDetector(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(price.dat,
                  style:const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
    )
        .toList(),



    );
  }
}
