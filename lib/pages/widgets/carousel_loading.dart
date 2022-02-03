import 'package:flutter/cupertino.dart';

class CarouselLoading extends StatelessWidget {
  const CarouselLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            color: Color(0xff10288D),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child:AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                color: Color(0xff10288D),
              ),
            ),
          ),
        )
      ],
    );
  }
}
