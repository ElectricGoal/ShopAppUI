import 'package:flutter/material.dart';
import 'package:shop_app/screen/size_config.dart';



class SortText extends StatelessWidget {
  const SortText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 3,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sort by price",
            style: TextStyle(
              color: Colors.grey,
              fontSize: SizeConfig.textMultiplier * 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.category,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class PopuText extends StatelessWidget {
  const PopuText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      height: SizeConfig.heightMultiplier * 5,
      child: Text(
        "Popular",
        style: TextStyle(
          fontSize: SizeConfig.textMultiplier * 4,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class RecommnendText extends StatelessWidget {
  const RecommnendText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: SizeConfig.heightMultiplier * 4,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recommended",
            style: TextStyle(
              color: Colors.black,
              fontSize: SizeConfig.textMultiplier * 3,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "View all",
            style: TextStyle(
              color: Colors.grey,
              fontSize: SizeConfig.textMultiplier * 2,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteText extends StatelessWidget {
  const FavoriteText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: SizeConfig.heightMultiplier * 4,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Favorite",
            style: TextStyle(
              color: Colors.black,
              fontSize: SizeConfig.textMultiplier * 3,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "View all",
            style: TextStyle(
              color: Colors.grey,
              fontSize: SizeConfig.textMultiplier * 2,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
