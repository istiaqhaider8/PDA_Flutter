import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class HomePageAp extends StatefulWidget {
  const HomePageAp({Key? key}) : super(key: key);

  @override
  _HomePageApState createState() => _HomePageApState();
}
final List<String> imageList = [
  'images/chS.png',
  'images/m1.png',
   'images/chS.png',
];

class _HomePageApState extends State<HomePageAp> {
  @override
  Widget build(BuildContext context) {
    return HomePageApq();
  }
}

class HomePageApq extends StatelessWidget {
  const HomePageApq({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(
              //   color: Colors.black,
              //   width: 2,
              // ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                CarouselSlider(
                    items: imageList
                        .map((item) => Container(
                      child: Center(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: 9000,
                        ),
                      ),
                    ))
                        .toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),

                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8,20,8,8),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DigitalClock(
                      digitAnimationStyle: Curves.easeOutExpo,
                      is24HourTimeFormat: true,
                      areaAligment : AlignmentDirectional.center,
                      areaHeight: 145,
                      areaWidth: 200,
                      areaDecoration: BoxDecoration(
                        color: Color(0xff10288D),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      hourMinuteDigitTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('Press Me',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),), style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(50,10,50,10)),),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('Press Me',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),), style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(50,10,50,10)),),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: () {}, child: const Text('Press Me',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),), style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(50,10,50,10)),),),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Card(
                color: Color(0xff10288D),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.notifications_active,
                        size: 35,
                          color: Colors.redAccent
                      ),
                      title: Text('The Enchanted Nightingale',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.',
                         style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Card(
                color: Color(0xff10288D),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                          Icons.notifications_active,
                          size: 35,
                          color: Colors.redAccent
                      ),
                      title: Text('The Enchanted Nightingale',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Card(
                color: Color(0xff10288D),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                          Icons.notifications_active,
                          size: 35,
                          color: Colors.redAccent
                      ),
                      title: Text('The Enchanted Nightingale',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ],
    );
  }
}
