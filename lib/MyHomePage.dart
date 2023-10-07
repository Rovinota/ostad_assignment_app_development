import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int  count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int price1 = 5;
  int price2 = 5;
  int price3 = 3;
  int items = 0;
  int total_amount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Febrilife", style: TextStyle(
            color: Colors.black,
          ),),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ],
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? buildPortraitLayout()
                : buildLandscapeLayout();
          },
        ));
  }

  buildPortraitLayout() {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15),
          child: Text(
            "My Bag",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            elevation: 5,
            child: Container(
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Image.network(
                        "https://fabrilife.com/products/61507e020791f-square.jpg"),
                    radius: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "T-Shirt",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Color: Black"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Size: M"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count1 = count1 + 1;
                                      total_amount += price1;
                                      items += 1;
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  )),
                            ),
                            Text(
                              count1.toString(),
                              style: TextStyle(fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {

                                    setState(() {
                                      if(count1 > 0) {
                                        count1 = count1 - 1;
                                        total_amount -= price1;
                                        items -= 1;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(

                    children: [
                      Icon(Icons.more_vert),
                      SizedBox(height: 80,),
                      Text("${price1}\$", style: TextStyle(
                        fontSize: 25,
                      ),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            elevation: 5,
            child: Container(
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Image.network(
                        "https://fabrilife.com/products/641bee8dd74af-square.jpg"),
                    radius: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Mens Trouser",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Color: Black"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Size: L"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count2 = count2 + 1;
                                      total_amount += price2;
                                      items += 1;
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  )),
                            ),
                            Text(
                              count2.toString(),
                              style: TextStyle(fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if(count2> 0) {
                                        count2 = count2 - 1;
                                        total_amount -= price2;
                                        items -= 1;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(

                    children: [
                      Icon(Icons.more_vert),
                      SizedBox(height: 80,),
                      Text("${price2}\$", style: TextStyle(
                        fontSize: 25,
                      ),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            elevation: 5,
            child: Container(
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Image.network(
                        "https://fabrilife.com/products/637b884d5e9ea-square.jpg?v=20"),
                    radius: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "Socks",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Color: White"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Size: Free"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count3 = count3 + 1;
                                      total_amount += price3;
                                      items += 1;
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  )),
                            ),
                            Text(
                             count3.toString(),
                              style: TextStyle(fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                     if (count3 > 0)
                                      {
                                        count3 = count3 - 1;
                                        total_amount -= price3;
                                        items -= 1;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(

                    children: [
                      Icon(Icons.more_vert),
                      SizedBox(height: 80,),
                      Text("${price3}\$", style: TextStyle(
                        fontSize: 25,
                      ),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 50,),
        Container(
          width: double.infinity,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Ammount", style: TextStyle(
                fontSize: 15,
              ),),Text("\$${total_amount}", style: TextStyle(
                fontSize: 25,
              ),),
            ],
          )
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 30,),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 50),
                backgroundColor: Colors.red,
              ),
              onPressed: (){
                final snackBar = SnackBar(
                  content: Text('Congratulations!!\nYou Have bought ${items} items.\nPrice: ${total_amount} Dollars.'),
                  duration: Duration(seconds: 2), // You can set the duration of the Snackbar
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }, child: Text("Check out"),

            ),
          ),
        )
      ],
    );
  }
  buildLandscapeLayout() {

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: Text(
              "My Bag",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: Image.network(
                          "https://fabrilife.com/products/61507e020791f-square.jpg"),
                      radius: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "T-Shirt",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Color: Black"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Size: M"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        count1 = count1 + 1;
                                        total_amount += price1;
                                        items += 1;
                                      });
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    )),
                              ),
                              Text(
                                count1.toString(),
                                style: TextStyle(fontSize: 30),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {

                                      setState(() {
                                        if(count1 > 0) {
                                          count1 = count1 - 1;
                                          total_amount -= price1;
                                          items -= 1;
                                        }
                                      });
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(

                      children: [
                        Icon(Icons.more_vert),
                        SizedBox(height: 80,),
                        Text("${price1}\$", style: TextStyle(
                          fontSize: 25,
                        ),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: Image.network(
                          "https://fabrilife.com/products/641bee8dd74af-square.jpg"),
                      radius: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "Mens Trouser",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Color: Black"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Size: L"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        count2 = count2 + 1;
                                        total_amount += price2;
                                        items += 1;
                                      });
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    )),
                              ),
                              Text(
                                count2.toString(),
                                style: TextStyle(fontSize: 30),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if(count2> 0) {
                                          count2 = count2 - 1;
                                          total_amount -= price2;
                                          items -= 1;
                                        }
                                      });
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(

                      children: [
                        Icon(Icons.more_vert),
                        SizedBox(height: 80,),
                        Text("${price2}\$", style: TextStyle(
                          fontSize: 25,
                        ),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: Image.network(
                          "https://fabrilife.com/products/637b884d5e9ea-square.jpg?v=20"),
                      radius: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "Socks",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Color: White"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Size: Free"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        count3 = count3 + 1;
                                        total_amount += price3;
                                        items += 1;
                                      });
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    )),
                              ),
                              Text(
                               count3.toString(),
                                style: TextStyle(fontSize: 30),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                       if (count3 > 0)
                                        {
                                          count3 = count3 - 1;
                                          total_amount -= price3;
                                          items -= 1;
                                        }
                                      });
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(

                      children: [
                        Icon(Icons.more_vert),
                        SizedBox(height: 80,),
                        Text("${price3}\$", style: TextStyle(
                          fontSize: 25,
                        ),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: double.infinity,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Ammount", style: TextStyle(
                  fontSize: 15,
                ),),Text("\$${total_amount}", style: TextStyle(
                  fontSize: 25,
                ),),
              ],
            )
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 200,),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 50),
                  backgroundColor: Colors.red,
                ),
                onPressed: (){
                  final snackBar = SnackBar(
                    content: Text('Congratulations!!\nYou Have Bought ${items} Items\nPrice: ${total_amount} Dollars.'),
                    duration: Duration(seconds: 2), // You can set the duration of the Snackbar
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, child: Text("Check out"),

              ),
            ),
          )
        ],
      ),
    );
  }


}
