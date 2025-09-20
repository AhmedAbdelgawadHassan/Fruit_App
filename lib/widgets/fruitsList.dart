// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruit/models/ProductModel.dart';
import 'package:fruit/widgets/product_item.dart';

class Fruitslist extends StatefulWidget {
  Fruitslist({super.key});

  @override
  State<Fruitslist> createState() => _FruitslistState();
}

class _FruitslistState extends State<Fruitslist> {
  List<ProductModel> product = [
    ProductModel(
      name: "Banana",
      image: "assets/fruits/banana.png",
      price: "3.99",
      rate: "4.5",
      rateCount: "120",
    ),
    ProductModel(
      name: "Papper",
      image: "assets/fruits/papper.png",
      price: "2.99",
      rate: "3.5",
      rateCount: "287",
    ),
    ProductModel(
      name: "Orange",
      image: "assets/fruits/orange.png",
      price: "1.99",
      rate: "5",
      rateCount: "320",
    ),
    ProductModel(
      name: "Egg",
      image: "assets/category/egg.png",
      price: "1.99",
      rate: "1.2",
      rateCount: "422",
    ),
  ];
  List basketList = [];
  void toggleBasket(ProductModel product) {
    if (basketList.contains(product)) {
      basketList.remove(product);
    } else {
      basketList.add(product);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.length,
              itemBuilder: (context, index) {
                return ProductItem(
                  image: product[index].image,
                  name: product[index].name,
                  price: product[index].price,
                  rate: product[index].rate,
                  rateCount: product[index].rateCount,
                  onTap: () {},
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
