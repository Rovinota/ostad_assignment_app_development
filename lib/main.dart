import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Assignment"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? buildPortraitLayout()
              : buildLandscapeLayout();
        },
      ),
    );
  }

  Widget buildPortraitLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Circular Network Image
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 200,
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Joshua Hanson',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Published on December 10, 2019\nSony, ILCE-7M2\nFree to use under Unsplash Licence",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20),
          ),
        ),
        // GridView for 6 images
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(6, (index) {
              return Center(
                child: Image.network("https://media.istockphoto.com/id/911623338/photo/hipster-photographer.webp?s=170667a&w=0&k=20&c=ZEu-36HpQOkA-QzC58k-5iQLypUimGW4sb7XMvPJFjg="),
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget buildLandscapeLayout() {
    return Row(
      children: <Widget>[
        // Circular Network Image (leftmost corner)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 200,
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),
          ),
        ),
        // 3-line Text
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Joshua Hanson',
                  //textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Published on December 10, 2019\nSony, ILCE-7M2\nFree to use under Unsplash Licence",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(10, (index) {
                    return Center(
                      child: Image.network("https://media.istockphoto.com/id/911623338/photo/hipster-photographer.webp?s=170667a&w=0&k=20&c=ZEu-36HpQOkA-QzC58k-5iQLypUimGW4sb7XMvPJFjg="),
                    );
                  }),
                ),
              ),

            ],
          ),
        ),


      ],
    );
  }
}