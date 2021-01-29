import 'package:flutter/material.dart';

class ServiceBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Padding(
          padding: EdgeInsets.only(left: 12,top: 0,right: 5,bottom: 0),
          child:Text("New",
            style: TextStyle(
              color: Colors.grey,
            ),

          ),
        ),
        Container(
          height: 1,
          margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 0),
          color:Colors.black12,
        ),

        Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),

            child:Text("Renew",style: TextStyle(
              color: Colors.grey,
            ),)),
        Container(
          height: 1,
          margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 0),
          color:Colors.black12,

        ),
        Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
            child:Text("Duplicate",style: TextStyle(
                color: Colors.grey
            ),)),
        Container(
          height: 1,
          margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 0),
          color:Colors.black12,

        ),

        // Text("Service1") ,
        // Text("This a service...")
      ],
    );
  }
}
