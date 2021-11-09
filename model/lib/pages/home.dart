import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:model/models/product.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
        "https://picsum.photos/id/$index/200/",
        faker.food.restaurant(),
        100000 + Random().nextInt(100000),
        faker.lorem.sentence(),
      );
    });
    return Scaffold(
      appBar: AppBar(title: const Text('Model'), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dummyData[index].imageURL),
            footer: Container(
              color: Colors.green.withOpacity(0.8),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    dummyData[index].judul,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp ${dummyData[index].harga}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    dummyData[index].deskripsi,
                    maxLines: 2,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
