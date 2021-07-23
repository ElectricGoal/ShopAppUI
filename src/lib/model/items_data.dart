import 'package:flutter/material.dart';
import 'package:shop_app/model/items.dart';

final ShopItems yellow = ShopItems(
  imageUrl: 'asset/image/yellow.png',
  cost: 200,
  name: 'Yellow',
  color: Colors.yellow.shade200,
);

final ShopItems light = ShopItems(
  imageUrl: 'asset/image/light.png',
  cost: 150,
  name: 'Light',
  color: Colors.lightBlueAccent.shade200,
);

final ShopItems red = ShopItems(
  imageUrl: 'asset/image/red.png',
  cost: 230,
  name: 'Red',
  color: Colors.redAccent.shade100,
);

final ShopItems green = ShopItems(
  imageUrl: 'asset/image/green.png',
  cost: 230.5,
  name: 'Green',
  color: Colors.greenAccent.shade200,
);

final ShopItems blue = ShopItems(
  imageUrl: 'asset/image/blue.png',
  cost: 290.9,
  name: 'Blue',
  color: Colors.blueAccent.shade200,
);

List<ShopItems> shopItems = [yellow, light, red, green, blue];
List<ShopItems> imgPreview = [
  blue,
  blue,
  blue,
];
