import 'package:e_mitra/theme/app_theme.dart';
import 'package:flutter/material.dart';


class ServiceDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "e-mitra",
      home: Scaffold(
        backgroundColor: AppTheme.colors.blue,
        body:ListView(
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
              margin: EdgeInsets.only(left:0,top: 0,right:5,bottom: 0 ),
              decoration: BoxDecoration(
                  color: AppTheme.colors.grey,
                  border: Border.all(
                    color: AppTheme.colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(38),topRight:Radius.circular(40),bottomLeft: Radius.circular(0) ,bottomRight: Radius.circular(0)),
                  boxShadow: [BoxShadow(
                    color: AppTheme.colors.grey,
                    spreadRadius: 1,
                    blurRadius: 1,
                  )]
              ) ,

              child: Column(
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text("SERVICE REQUIREMENTS",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45

                      ),),

                    ),
                  ),
                  Padding(padding:EdgeInsets.all(30),
                    child:  RaisedButton(
                      padding:EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                      child: Text("New Passport".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                    ),),
                  Container(
                    margin: EdgeInsets.only(left: 30,top: 0,right: 30,bottom: 10),
                    padding: EdgeInsets.only(left: 30,top:30,right: 30,bottom: 30),
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 0
                          )
                        ]

                    ),
                    child: Column(
                      children:<Widget> [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget> [
                            Container(
                              alignment: Alignment.topLeft,
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/settings.png"))
                              ),
                            ),

                            Expanded(
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:<Widget> [

                                  Padding(
                                    padding: EdgeInsets.only(left: 12,top: 0,right: 5,bottom: 0),
                                    child:Text("Aadhar Copy (2)",
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
                                      child:Text("Photos (3)",style: TextStyle(
                                        color: Colors.grey,
                                      ),)),
                                  Container(
                                    height: 1,
                                    margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 0),
                                    color:Colors.black12,

                                  ),
                                  Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
                                      child:Text("Date of the birth proof",style: TextStyle(
                                          color: Colors.grey
                                      ),)),
                                  Container(
                                    height: 1,
                                    margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 0),
                                    color:Colors.black12,

                                  ),
                                  Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
                                      child:Text("Voter card,Pan card",style: TextStyle(
                                          color: Colors.grey
                                      ),)),
                                  Container(
                                    height: 1,
                                    margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 0),
                                    color:Colors.black12,

                                  ),
                                  Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
                                      child:Text("Residential Certificate",style: TextStyle(
                                          color: Colors.grey
                                      ),)),
                                  Container(
                                    height: 1,
                                    margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 0),
                                    color:Colors.black12,

                                  ),
                                  Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
                                      child:Text("Income Certificate",style: TextStyle(
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
                              ),
                            )



                          ],


                        ),
                        // Container(
                        //   height: 1,
                        //   margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 0),
                        //   color:Colors.black12,

                      ],
                    ),
                  ),
                ],

              ),
            )

          ],

        ) ,
      ),
    );
  }
}
