import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    //Textstyle
    var MyPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary
    );
    var MySecondaryTextStyle = TextStyle(
        color: Theme.of(context).colorScheme.primary
    );

    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right:25,top:25,bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(left :25, right:25,bottom:25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Delivery Fees
            Column(
              children: [
                Text('\$0.99', style: MyPrimaryTextStyle,),
                Text('Delivery fee',style: MySecondaryTextStyle,),
              ],
            ),
            //Delivery Time
            Column(
              children: [
                Text('15-30 min',style: MyPrimaryTextStyle,),
                Text('Delivery Time',style: MySecondaryTextStyle,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
