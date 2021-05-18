import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menucard.dart';

class MenuList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return new ListView.builder(
    itemCount: menuData.length,
    itemBuilder: (context,i) =>Container(
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(width: 100,height: 100,
            child: Image.network(menuData[i].pic),
),
          SizedBox(width: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(menuData[i].name,style: TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.bold),
                    ),

                    Text(menuData[i].menu,style: TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.bold),
                    ),
                    Text(menuData[i].rating,style: TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.bold),
                    ),
                    Text(menuData[i].arrivedetail,style: TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                //child: Icon(menuData[i].favorites),
              )
            ],
           ),
],
        ),
      ),
    )
);
  }

}