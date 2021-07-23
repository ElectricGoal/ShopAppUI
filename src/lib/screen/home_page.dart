import 'package:flutter/material.dart';
import 'package:shop_app/screen/home_page_components.dart';
import 'package:shop_app/screen/payment_page.dart';
import 'package:shop_app/widget/bar_items.dart';
import 'package:shop_app/widget/popular_view.dart';
import 'package:shop_app/widget/search_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          leading: Icon(
            Icons.person,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PaymentPage()),
                    );
                  });
                },
              ),
            ),
          ],
          elevation: 0.0,
        ),
        bottomNavigationBar: BarItem(),
        body: ListView(
          shrinkWrap: true,
          children: [
            SearchWidget(),
            PopuText(),
            SortText(),
            PopularView(),
            RecommnendText(),
            PopularView(),
            FavoriteText(),
            PopularView(),
          ],
        ),
      ),
    );
  }
}
