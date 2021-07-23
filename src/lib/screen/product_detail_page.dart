import 'package:flutter/material.dart';
import 'package:shop_app/screen/size_config.dart';
import 'package:shop_app/widget/buy_button.dart';
import 'package:shop_app/widget/item_count.dart';
import 'package:shop_app/widget/item_descrip.dart';
import 'package:shop_app/widget/item_name.dart';
import 'package:shop_app/widget/items_preview.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ItemPreview(),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          Item_name(),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          ItemCount(),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          ItemDescription(),
          Spacer(),
          BuyButton()
        ],
      ),
    );
  }
}


