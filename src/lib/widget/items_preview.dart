import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/items_data.dart';
import 'package:shop_app/screen/size_config.dart';

class ItemPreview extends StatefulWidget {
  const ItemPreview({Key? key}) : super(key: key);

  @override
  _ItemPreviewState createState() => _ItemPreviewState();
}

class _ItemPreviewState extends State<ItemPreview> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
            height: SizeConfig.heightMultiplier * 40,
            aspectRatio: 1,
            scrollDirection: Axis.horizontal,
          ),
          itemCount: imgPreview.length,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imgPreview[index].imageUrl,
                  ),
                  scale: SizeConfig.imageSizeMultiplier,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imgPreview.length,
            (index) => activeIndex == index ? ActiveDot() : InactiveDot(),
          ),
        ),
      ],
    );
  }
}

class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 20,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 20,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
