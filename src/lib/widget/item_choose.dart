import 'package:flutter/material.dart';
import 'package:shop_app/model/items.dart';
import 'package:shop_app/screen/size_config.dart';

class ItemChoose extends StatelessWidget {
  ItemChoose({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ShopItems item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: SizeConfig.imageSizeMultiplier * 18,
        width: SizeConfig.imageSizeMultiplier * 16,
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              item.imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        item.name,
        style: TextStyle(
          fontSize: SizeConfig.textMultiplier * 2.2,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        '\$' + item.cost.toString(),
        style: TextStyle(
          fontSize: SizeConfig.textMultiplier * 2.5,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      trailing: Icon(
        Icons.delete,
        color: Colors.black,
      ),
    );
  }
}