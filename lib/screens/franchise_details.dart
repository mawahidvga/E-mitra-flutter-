import 'package:e_mitra/screens/service.dart';
import 'package:e_mitra/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FranchiseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "e-mitra",
        home: Container(
        decoration:new BoxDecoration(
        image:  new DecorationImage(
        image: new AssetImage("assets/1.jpg"),
    fit: BoxFit.cover,)
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    body:ListView (
      children:<Widget> [
        Container(
          margin: EdgeInsets.all(20),
          child: Container(
            height: 160,
            alignment: Alignment.center,
            decoration:new BoxDecoration(
                image:  new DecorationImage(
                    image: new AssetImage("assets/dream_biz.png"))
            ),
          ),


        ),
        Container(
          margin: EdgeInsets.only(top: 2,right: 30,bottom: 0,left: 30),
          decoration: BoxDecoration(
              color: AppTheme.colors.blue,
              border: Border.all(
                color: AppTheme.colors.blue,
                width: 1,
              ),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomRight:  Radius.circular(0),bottomLeft:  Radius.circular(0)),
              boxShadow: [BoxShadow(
                color: AppTheme.colors.blue,
                spreadRadius: 1,
                blurRadius: 1,
              )]
          ),

          child:Container(
            margin: EdgeInsets.all(30),
          child:Column(
            //   mainAxisAlignment:MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget> [
              //name
              Padding(
                padding: EdgeInsets.all(15),
                child: Row (

                  children: <Widget> [
                    Text("Name         :",style:TextStyle(
                        fontSize: 20,
                        color: Colors.white,

                    ),),
                    Padding(padding:EdgeInsets.only(left: 20,bottom: 0,right: 0,top: 0),
                      child:Text("E-mitra Jana seva Kendram",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    )

                  ],

                ),

              ),
              //place
              Padding(
                padding: EdgeInsets.all(15),
                child: Row (
                  children: <Widget> [
                    Text("Place          :",style:TextStyle(
                      fontSize: 20,
                      color: Colors.white,

                    ),),
                    Padding(padding:EdgeInsets.only(left: 20,bottom: 0,right: 0,top: 0),
                      child:Text("Kottakkal",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    )

                  ],

                ),

              ),
             //adderss
              Padding(
                padding: EdgeInsets.all(15),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisAlignment:MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Text("Address     :",style:TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                    Flexible(child:
                    Container(
                      child:Padding(padding:EdgeInsets.only(left: 20,bottom: 0,right: 0,top: 0),
                        child: Text("Near Ayurveda College,Cheguvetty,"
                            "Kottakkal,Malappuram(Dt).Kerala-676501,",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          maxLines: 3,),
                      ),
                      height: 100,
                    )
                    )





                  ],

                ),

              ),
              //phone
              Padding(
                padding: EdgeInsets.all(15),
                child: Row (

                  children: <Widget> [
                    Text("Phone        :",style:TextStyle(
                      fontSize: 20,
                      color: Colors.white,

                    ),),
                    Padding(padding:EdgeInsets.only(left: 20,bottom: 0,right: 0,top: 0),
                      child:Text("090480 69633",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                    )

                  ],

                ),

              ),
            ],
          ) ,

          ),

        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(
                color: Colors.white70,
                width: 1,
              ),
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight:  Radius.circular(10),bottomLeft:  Radius.circular(10)),
              boxShadow: [BoxShadow(
                color: Colors.white70,
                spreadRadius: 1,
                blurRadius: 1,
              )]
          ),
          child:Column(
              mainAxisAlignment:MainAxisAlignment.start,
            children:<Widget> [
               Center(
                 child: Padding(
                   padding: EdgeInsets.all(10),
                   child: RichText(
                     text: TextSpan(
                       style: Theme.of(context).textTheme.body1,
                       children: [
                         WidgetSpan(
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 2.0),
                             child: Icon(Icons.miscellaneous_services_sharp,
                             color: Colors.black,),
                           ),
                         ),
                         TextSpan(text: 'SERVICES',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 20
                         )),
                       ],
                     ),
                   ),
                 ),
               ),
               Container(
                 height: 90,
                 alignment: Alignment.center,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: <Widget>[
                     Row(
                       mainAxisAlignment:MainAxisAlignment.start,
                       children: <Widget>[

                         Padding(padding:EdgeInsets.all(10),
                         child:  RaisedButton(
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(50.0),
                               side: BorderSide(color: Colors.red)),
                           onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder:
                                 (context)=> Service() ));
                           },
                           color: Colors.red,
                           textColor: Colors.white,
                           child: Text("Passport".toUpperCase(),
                               style: TextStyle(fontSize: 14)),
                         ),),
                         Padding(padding:EdgeInsets.all(10),
                           child:  RaisedButton(
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(50.0),
                                 side: BorderSide(color: Colors.red)),
                             onPressed: () {},
                             color: Colors.red,
                             textColor: Colors.white,
                             child: Text("Aadhar".toUpperCase(),
                                 style: TextStyle(fontSize: 14)),
                           ),), Padding(padding:EdgeInsets.all(10),
                           child:  RaisedButton(
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(50.0),
                                 side: BorderSide(color: Colors.red)),
                             onPressed: () {},
                             color: Colors.red,
                             textColor: Colors.white,
                             child: Text("Driving License".toUpperCase(),
                                 style: TextStyle(fontSize: 14)),
                           ),),
                         Padding(padding:EdgeInsets.all(10),
                           child:  RaisedButton(
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(50.0),
                                 side: BorderSide(color: Colors.red)),
                             onPressed: () {},
                             color: Colors.red,
                             textColor: Colors.white,
                             child: Text("Pan Card".toUpperCase(),
                                 style: TextStyle(fontSize: 14)),
                           ),),
                         Padding(padding:EdgeInsets.all(10),
                           child:  RaisedButton(
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(50.0),
                                 side: BorderSide(color: Colors.red)),
                             onPressed: () {},
                             color: Colors.red,
                             textColor: Colors.white,
                             child: Text("Election ID Card".toUpperCase(),
                                 style: TextStyle(fontSize: 14)),
                           ),)


                       ],
                     )
                   ],
                 ) ,
               )
            ],
          ) ,
        ),
        Container(
          margin: EdgeInsets.only(top: 2,right: 30,bottom: 10,left: 30),
          decoration: BoxDecoration(
              color: AppTheme.colors.blue,
              border: Border.all(
                color: AppTheme.colors.blue,
                width: 1,
              ),
              borderRadius: BorderRadius.only(topRight: Radius.circular(0),topLeft: Radius.circular(0),bottomRight:  Radius.circular(20),bottomLeft:  Radius.circular(20)),
              boxShadow: [BoxShadow(
                color: AppTheme.colors.blue,
                spreadRadius: 1,
                blurRadius: 1,
              )]
          ),
          child:Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
                child: Icon(
                  Icons.call,
                  size: 32,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
            ),
          )



        ),
      ],
    ),
        ),
        ),
    );
  }
}
