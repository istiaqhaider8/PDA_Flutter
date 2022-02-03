import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_document_assistant/common/theme_helper.dart';

class CategoryPageActive extends StatefulWidget {
  const CategoryPageActive({Key? key}) : super(key: key);

  @override
  _CategoryPageActiveState createState() => _CategoryPageActiveState();
}

class _CategoryPageActiveState extends State<CategoryPageActive> {
  @override
  Widget build(BuildContext context) {
    return commonWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: CategoryPage(),
      )
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,20,0,20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(onPressed: () {}, child: const Text('Press Me'), style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(150,20,150,20)),),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(onPressed: () {}, child: const Text('Press Me'), style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(150,20,150,20)),),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ElevatedButton(onPressed: () {}, child: const Text('Press Me'), style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(150,20,150,20)),),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,5,0,20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                    OutlinedButton(onPressed: (){}, child: Text("Click Me"), style: ButtonStyle(overlayColor: MaterialStateProperty.all(Color(0xffe340dc)),),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]
    );
  }
}
