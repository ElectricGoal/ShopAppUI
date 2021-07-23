import 'package:flutter/material.dart';
import 'package:shop_app/model/items_data.dart';
import 'package:shop_app/screen/size_config.dart';
import 'package:shop_app/widget/item_choose.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            height: SizeConfig.heightMultiplier * 5,
            child: Text(
              "Cart",
              style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 4,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          ItemChoose(
            item: yellow,
          ),
          ItemChoose(
            item: red,
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            height: SizeConfig.heightMultiplier * 4,
            child: Text(
              "Payment methods",
              style: TextStyle(
                fontSize: SizeConfig.textMultiplier * 2.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          PayCard(),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          TotalOrder(),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 22),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TotalOrder extends StatelessWidget {
  const TotalOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Total order",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 3,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.2,
        ),
        Text(
          "\$630",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 3.5,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class PayCard extends StatelessWidget {
  const PayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          Icons.credit_card,
          color: Colors.black,
          size: SizeConfig.heightMultiplier * 5,
        ),
        title: Text(
          "Travel card",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 2,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          "Mastercard - 3356",
          style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 1.8,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.black,
          size: SizeConfig.heightMultiplier * 5,
        ),
      ),
    );
  }
}
