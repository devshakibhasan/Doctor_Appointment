import 'package:flutter/material.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
class SliderPage extends StatelessWidget {
  const SliderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: Container(
        child: SizedBox(
          height: 170.0,
          width: double.infinity,
          child: Carousel(
            images: [
              Image.asset(
                "assets/images/slider_1.png",
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/images/slider_2.png",
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/images/slider_3.png",
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/images/slider_4.png",
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/images/slider_5.png",
                fit: BoxFit.fill,
              ),
            ],
            dotSize: 10.0,
            dotSpacing: 20.0,
            dotColor: Color(0xffff0022),
            indicatorBgPadding: 5.0,
            dotVerticalPadding: 5.0,
            dotBgColor: Colors.transparent,
            dotIncreasedColor: Color(0xFFE0E0E0),
            borderRadius: true,
          ),
        ),
      ),
    );
  }
}
