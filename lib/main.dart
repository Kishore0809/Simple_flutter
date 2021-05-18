import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MenuList.dart';
import 'imageview.dart';
import 'myprovider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => MyProvider(),child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<String> listOfMenu = [
    ' All',
    'Coffee',
    'Drink',
    'Fast Food'
  ];
  final List<String> buttonmenu = [
    'Delivery',
    'Pickup',
    'Local'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Swiggy', style: TextStyle(color: Colors.red,fontSize: 30.0),),
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications_none_outlined,color: Colors.grey,),)
        ],
      ),
    body: new ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        SizedBox(height: 10,),
      ImageView(),
        Padding(
          padding: const EdgeInsets.only(left: 22.0, top: 20),
          child: Container(
            height: 65,
            child: ListView.builder(
                itemCount: listOfMenu.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Consumer<MyProvider>(
                      builder: (context, numbersOfOrders, child) {
                        return GestureDetector(
                          onTap: () {
                            numbersOfOrders.setSelectedIndex(i);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(0, 0),
                                  )
                                ],
                                color:
                                numbersOfOrders.selectedIndexOfMenuList !=
                                    null &&
                                    numbersOfOrders
                                        .selectedIndexOfMenuList ==
                                        i
                                    ? Color(0xFFFFCC2E)
                                    : Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    listOfMenu[i],
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                }),
          ),
        ),
    Padding(
      padding: const EdgeInsets.all(15.0),
      child:   Container(
        child: Column(
          children: <Widget>[

            TextFormField(

              decoration: InputDecoration(

                suffixIcon: Icon(Icons.search),

                  hintText: 'search',

              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0),)),

          ),

      ),

    ],

    ),

  ),
),
        Padding(
          padding: const EdgeInsets.only(left: 50.0,),
          child: Container(
            height: 65,
            child: ListView.builder(
                itemCount: buttonmenu.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Consumer<MyProvider>(
                      builder: (context, numbersOfOrders, child) {
                        return GestureDetector(
                          onTap: () {
                            numbersOfOrders.setSelectedIndex(i);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFFFCC2E),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(0, 0),
                                  )
                                ],
                                color:
                                numbersOfOrders.selectedIndexOfMenuList !=
                                    null &&
                                    numbersOfOrders
                                        .selectedIndexOfMenuList ==
                                        i
                                    ? Color(0xFFFFCC2E)
                                    : Colors.white,
                                border: Border.all(
                                  color: Color(0xFFFFCC2E),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    buttonmenu[i],
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                }),
          ),
        ),
     SizedBox(height: 10,),
new Container(
  child: Column(
    children: [
      Container(
        child: new Row(
          children: [
            new Container(
              margin: EdgeInsets.all(10.0),
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(15),
              child: Image(image: AssetImage('assets/ice.jpg'),
                height: 100,width: 100,fit: BoxFit.cover,),
              ),
            ),
            new Container(
              margin: EdgeInsets.all(3.0),
              height: 120,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                 Row(
                   children: [
                     Text('Kishore ice',style: TextStyle(
                         fontSize: 20.0, fontWeight: FontWeight.bold)),
                     SizedBox(width: 120,),
                     Icon(
                       Icons.favorite_border_outlined,color: Colors.grey,
                       size: 25.0,
                     )
                   ],
                 ),
                  // Container(
                  //   margin: EdgeInsets.all(0.0),
              Text('fast food,Drink,Coffee,Pizz..'),
                //SizedBox(height: 8.0,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow[600],size: 30.0,),
                      Text('4.5(1.256 Reviews)',style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined,size: 20.0,color: Colors.pink),
                      Text('30 mins'),
                      SizedBox(width: 5.0,),
                      Icon(Icons.location_on_outlined,size: 20.0,color: Colors.pink),
                      Text('0.4 Km'),
                      SizedBox(width: 5.0,),
                      Icon(Icons.directions_car,size: 20.0,color: Colors.pink),
                      Text('100rs')
                    ],
                  )
                ]
              ),
            )
          ],
        )
      )
    ],
  ),
),
        SizedBox(height: 10,),
        new Container(
          child: Column(
            children: [
              Container(
                  child: new Row(
                    children: [
                      new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('assets/pizza.webp'),
                            height: 100,width: 100,fit: BoxFit.cover,),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.all(3.0),
                        height: 120,
                        child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                children: [
                                  Text('Pizza Corner',style: TextStyle(
                                      fontSize: 20.0, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 120,),
                                  Icon(
                                    Icons.favorite,color: Colors.red,
                                    size: 25.0,
                                  )
                                ],
                              ),
                              // Container(
                              //   margin: EdgeInsets.all(0.0),
                              Text('Burger, Coke, Pizza, Mcdonand..'),
                              //SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow[600],size: 30.0,),
                                  Text('4.5(1.256 Reviews)',style: TextStyle(
                                      fontSize: 15.0, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.access_time_outlined,size: 20.0,color: Colors.pink),
                                  Text('30 mins'),
                                  SizedBox(width: 5.0,),
                                  Icon(Icons.location_on_outlined,size: 20.0,color: Colors.pink),
                                  Text('Anna Nagar'),
                                  SizedBox(width: 5.0,),
                                  Icon(Icons.directions_car,size: 20.0,color: Colors.pink),
                                  Text('150rs')
                                ],
                              )
                            ]
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        new Container(
          child: Column(
            children: [
              Container(
                  child: new Row(
                    children: [
                      new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('assets/cofee.jpg'),
                            height: 100,width: 100,fit: BoxFit.cover,),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.all(3.0),
                        height: 120,
                        child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                children: [
                                  Text('Cool Coffee',style: TextStyle(
                                      fontSize: 20.0, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 120,),
                                  Icon(
                                    Icons.favorite_border_outlined,color: Colors.grey,
                                    size: 25.0,
                                  )
                                ],
                              ),
                              // Container(
                              //   margin: EdgeInsets.all(0.0),
                              Text('Coffee,Cold Coffee,Hot milk..'),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow[600],size: 30.0,),
                                  Text('4.5(1.256 Reviews)',style: TextStyle(
                                      fontSize: 15.0, fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.access_time_outlined,size: 20.0,color: Colors.pink),
                                  Text('45 mins'),
                                  SizedBox(width: 5.0,),
                                  Icon(Icons.location_on_outlined,size: 20.0,color: Colors.pink),
                                  Text('adayar'),
                                  SizedBox(width: 5.0,),
                                  Icon(Icons.directions_car,size: 20.0,color: Colors.pink),
                                  Text('200rs')
                                ],
                              )
                            ]
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),     SizedBox(height: 10,),
        new Container(
          child: Column(
            children: [
              Container(
                  child: new Row(
                    children: [
                      new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('assets/ice.jpg'),
                            height: 100,width: 100,fit: BoxFit.cover,),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.all(3.0),
                        height: 120,
                        child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                children: [
                                  Text('Kishore ice',style: TextStyle(
                                      fontSize: 20.0, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 120,),
                                  Icon(
                                    Icons.favorite_border_outlined,color: Colors.grey,
                                    size: 25.0,
                                  )
                                ],
                              ),
                              // Container(
                              //   margin: EdgeInsets.all(0.0),
                              Text('fast food,Drink,Coffee,Pizz..'),
                              //SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow[600],size: 30.0,),
                                  Text('4.5(1.256 Reviews)',style: TextStyle(
                                      fontSize: 15.0, fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.access_time_outlined,size: 20.0,color: Colors.pink),
                                  Text('30 mins'),
                                  SizedBox(width: 5.0,),
                                  Icon(Icons.location_on_outlined,size: 20.0,color: Colors.pink),
                                  Text('0.4 Km'),
                                  SizedBox(width: 5.0,),
                                  Icon(Icons.directions_car,size: 20.0,color: Colors.pink),
                                  Text('100rs')
                                ],
                              )
                            ]
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        new Container(
          child: Column(
            children: [
              Container(
                  child: new Row(
                    children: [
                      new Container(
                        margin: EdgeInsets.all(10.0),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(15),
                          child: Image(image: AssetImage('assets/ice.jpg'),
                            height: 100,width: 100,fit: BoxFit.cover,),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.all(3.0),
                        height: 120,
                        child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Row(
                                children: [
                                  Text('Ram ice',style: TextStyle(
                                      fontSize: 20.0, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 140,),
                                  Icon(
                                    Icons.favorite_border_outlined,color: Colors.grey,
                                    size: 25.0,
                                  )
                                ],
                              ),
                              // Container(
                              //   margin: EdgeInsets.all(0.0),
                              Text('fast food,Drink,Coffee,Pizz..'),
                              //SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow[600],size: 30.0,),
                                  Text('4.5(1.256 Reviews)',style: TextStyle(
                                      fontSize: 15.0, fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Row(
                                children: [
                                  Icon(Icons.access_time_outlined,size: 20.0,color: Colors.pink),
                                  Text('30 mins'),
                                  SizedBox(width: 5.0,),
                                  Icon(Icons.location_on_outlined,size: 20.0,color: Colors.pink),
                                  Text('0.4 Km'),
                                  SizedBox(width: 5.0,),
                                  Icon(Icons.directions_car,size: 20.0,color: Colors.pink),
                                  Text('100rs')
                                ],
                              )
                            ]
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),



      ],
),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey[500],
        currentIndex: _currentIndex,
          onTap: (value){
          _currentIndex =value;
          setState(() {

          });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),title: Text('home')),
    BottomNavigationBarItem(icon: Icon(Icons.add_location),title: Text('nearby')),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),title: Text('cart')),
    BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text('delivery')),
    BottomNavigationBarItem(icon: Icon(Icons.menu),title: Text('menu'))
          ],
      ),
    );
  }
}
