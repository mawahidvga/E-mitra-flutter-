import 'package:e_mitra/screens/service_details.dart';
import 'package:e_mitra/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Service extends StatelessWidget {
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
                      Padding(padding:EdgeInsets.all(30),
                        child:  RaisedButton(
                          padding:EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.red)),
                          onPressed: () {},
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Text("Passport".toUpperCase(),
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
                                        padding: EdgeInsets.only(left: 12,top: 5,right: 5,bottom: 0),
                                        child:InkWell(
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "New ",
                                                    style: TextStyle(color: Colors.grey,
                                                      fontWeight:FontWeight.bold,
                                                      letterSpacing:1,
                                                      fontSize: 14,
                                                    )
                                                ),
                                                WidgetSpan(
                                                  child: Icon(Icons.arrow_forward_ios, size: 14,textDirection:TextDirection.ltr,
                                                    color: Colors.black45,),
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder:
                                                (context)=> ServiceDetails() ));
                                          },
                                        )
                                      ),
                                      Container(
                                        height: 1,
                                        margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 4),
                                        color:Colors.black12,
                                      ),

                                      Padding(padding: EdgeInsets.only(left: 12,top: 5,right: 5,bottom: 0),
                                          child:InkWell(
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: "Renew ",
                                                      style: TextStyle(color: Colors.grey,
                                                        fontWeight:FontWeight.bold,
                                                        letterSpacing:1,
                                                        fontSize: 14,
                                                      )
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(Icons.arrow_forward_ios, size: 14,textDirection:TextDirection.ltr,
                                                      color: Colors.black45,),
                                                  )
                                                ],
                                              ),
                                            ),
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder:
                                                  (context)=> ServiceDetails() ));
                                            },
                                          )),
                                      Container(
                                        height: 1,
                                        margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 4),
                                        color:Colors.black12,

                                      ),
                                      Padding(padding: EdgeInsets.only(left: 12,top: 5,right: 5,bottom: 0),
                                          child:InkWell(
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text: "Duplicate",
                                                      style: TextStyle(color: Colors.grey,
                                                        fontWeight:FontWeight.bold,
                                                        letterSpacing:1,
                                                        fontSize: 14,
                                                      )
                                                  ),
                                                  WidgetSpan(
                                                    child: Icon(Icons.arrow_forward_ios, size: 14,textDirection:TextDirection.ltr,
                                                      color: Colors.black45,),
                                                  )
                                                ],
                                              ),
                                            ),
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder:
                                                  (context)=> ServiceDetails() ));
                                            },
                                          )),
                                      Container(
                                        height: 1,
                                        margin: EdgeInsets.only(left: 10,top:6,right: 0,bottom: 4),
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
                            // Container(
                            //   margin: EdgeInsets.only(left: 0,top: 10,right: 0,bottom: 0),
                            //   child: Center(
                            //     child:RichText(
                            //       text: TextSpan(
                            //         children: [
                            //           TextSpan(
                            //               text: "View Details ",
                            //               style: TextStyle(color: Color(0xFF8c37c7),
                            //                 fontWeight:FontWeight.bold,
                            //                 letterSpacing:1,
                            //                 fontSize: 14,
                            //               )
                            //           ),
                            //           WidgetSpan(
                            //             child: Icon(Icons.arrow_forward_ios, size: 14,
                            //               color: Colors.black45,),
                            //           )
                            //         ],
                            //       ),
                            //     ) ,
                            //
                            //   ),
                            //
                            // )
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
