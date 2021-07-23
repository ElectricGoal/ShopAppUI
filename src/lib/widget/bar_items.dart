import 'package:flutter/material.dart';
import 'package:shop_app/screen/size_config.dart';

class BarItem extends StatefulWidget {
  const BarItem({
    Key? key,
  }) : super(key: key);

  @override
  _BarItemState createState() => _BarItemState();
}

class _BarItemState extends State<BarItem> {
  int _selectedIndex = 0;
  final List<IconData> barItems = [
    Icons.home,
    Icons.favorite,
    Icons.person,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: SizeConfig.screenHeight / 12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: barItems.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: (SizeConfig.screenWidth - 20) / 4,
              decoration: BoxDecoration(
                color: _selectedIndex == index ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                barItems[index],
                color: _selectedIndex == index ? Colors.white : Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
