import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
//      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: Carousel(
            boxFit: BoxFit.cover,
            images: [
            Category(
                'https://lh3.googleusercontent.com/2L4KUuN8fXnkwh2S-C3exr2b-oTe3mIaspcB4RO6XG026yLYFmEMinLZCDOBxftDiZU=w200-h300-rw'),
            SizedBox(
              width: 10.0,
            ), Category(
              'https://lh3.googleusercontent.com/N2smvNyfhOUUdYFt8UDtenVY1A3A62reVWacPTRERjDYRex4dkVfrxrQJ1BMPQ1KSxXKvw=w200-h300-rw',
            ),
            SizedBox(
              width: 10.0,),
            Category(
              'https://lh3.googleusercontent.com/oE89fThv4Jz8oquzHO_pkn2PwES88YM4FJtjBLsZv0ZMpS12ViAryUN0V7kTbtuzJ9l1=w200-h300-rw',
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
          showIndicator: false,
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image;

  Category(this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: (){},
          child:Container(
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new NetworkImage(image),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ));
  }
}
