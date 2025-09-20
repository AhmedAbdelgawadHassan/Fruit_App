import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.image, required this.name, required this.price, required this.rate, required this.rateCount});
    final String image;
    final String name;
    final String price;
    final String rate;
    final String rateCount;


  @override
  Widget build(BuildContext context) {
  
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children:[ Container(
              margin: EdgeInsets.all(7.5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: FittedBox(child: Image.asset(image,  width: 130, height: 110, fit: BoxFit.contain)),
            ),
            Positioned(
              right: 5,
              bottom: 6,

              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.white,
                child: Icon(Icons.add, color: Colors.black,size: 20,)))
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(name, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/icons/star.png',width: 12,),
                SizedBox(width: 10),
                 Text("$rate ($rateCount)", style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                 ),
              ],
            ),
            SizedBox(height: 10,),
             Text('\$ $price', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ],
            
          ),
        )
          
         
        ],
      ),
    );
  }
}