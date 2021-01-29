import 'package:e_mitra/models/home_service.dart';
import 'package:e_mitra/screens/franchise.dart';
import 'package:e_mitra/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';



class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  ProgressDialog pr;

  List item = [
    {"title": "Button One", "color": 50},
    {"title": "Button Two", "color": 100},
    {"title": "Button Three", "color": 200},
    {"title": "No show", "color": 0, "hide": '1'},
  ];

   List<HomeService> homeSer=[
     new HomeService(id: 1,title: "Service 1",description: "This is a service"),
     new HomeService(id: 2,title: "Service 2",description: "This is a service"),
     new HomeService(id: 3,title: "Service 3",description: "This is a service"),
     new HomeService(id: 4,title: "Service 4",description: "This is a service"),
     new HomeService(id: 5,title: "Service 5",description: "This is a service")



   ];


  @override
  Widget build(BuildContext context) {
//For normal dialog
    pr = ProgressDialog(context,type: ProgressDialogType.Normal);
    pr.style(
      progressWidget: CircularProgressIndicator(),
      message: "Processing...",
      progressTextStyle: TextStyle(
          color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
    );
    return  ListView(
      children:<Widget> [
        SizedBox(height: 5,),
        Container(
          height: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.ltr,
            children:<Widget>[
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        scale: 1,
                        image: AssetImage("assets/violetbox.png"),
                        fit: BoxFit.cover,

                      ),
                      border: Border.all(
                        color: Color(0xFF675bfb),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [BoxShadow(
                        color: Color(0xFF675bfb),
                        spreadRadius: 1,
                        blurRadius: 3,
                      )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Image(image:AssetImage("assets/world.png"),height: 50,width: 50,),
                      Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child: Text("560",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ) ,

                        ),
                      ),

                      Text("FRANCHISE",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              letterSpacing: 1
                          )
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/yellowbox.png"),
                        scale: 1,
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Color(0xFFffbe48),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [BoxShadow(
                        color: Color(0xFFffbe48),
                        spreadRadius: 1,
                        blurRadius: 3,
                      )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Image(image:AssetImage("assets/settings.png"),height: 50,width: 50,),
                      Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child:Text("562",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ) ,
                        ),
                      ),

                      Text("SERVICES",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              letterSpacing: 1
                          )
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        SizedBox(height: 10),
        /////  Services list

        serviceCard(),

        // Column(
        //   children: <Widget> [
        //     Container (
        //       margin: EdgeInsets.only(left: 30,top: 0,right: 30,bottom: 10),
        //       padding: EdgeInsets.only(left: 30,top:30,right: 30,bottom: 10),
        //       decoration: BoxDecoration(
        //           borderRadius:BorderRadius.circular(12),
        //           color: Colors.white,
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Colors.white,
        //                 spreadRadius: 1,
        //                 blurRadius: 0
        //             )
        //           ]
        //       ),
        //       child: Column(
        //         children:<Widget> [
        //
        //           Row(
        //             children:<Widget> [
        //               Container(
        //                 width: 50,
        //                 height: 50,
        //                 decoration: BoxDecoration(
        //                     image: DecorationImage(image: AssetImage("assets/home.png"))
        //                 ),
        //               ),
        //               Column(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children:<Widget> [
        //
        //                   Padding(padding: EdgeInsets.only(left: 12,top: 0,right: 5,bottom: 0),
        //                       child:Text("Service1",
        //                         style: TextStyle(
        //                             color: Color(0xFF202020),
        //                             fontWeight: FontWeight.bold
        //                         ),)),
        //                   Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
        //                       child:Text("This a service...",style: TextStyle(
        //                           color: Colors.grey
        //                       ),))
        //                   // Text("Service1") ,
        //                   // Text("This a service...")
        //                 ],
        //               )
        //
        //
        //             ],
        //
        //
        //           ),
        //           Container(
        //             height: 1,
        //             margin: EdgeInsets.only(left: 0,top: 10,right: 0,bottom: 0),
        //             color:Colors.black12,
        //
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(left: 0,top: 10,right: 0,bottom: 0),
        //             child: Center(
        //               child:
        //               RaisedButton(
        //                 padding:EdgeInsets.all(6),
        //                 onPressed: () {
        //                   Navigator.push(context, MaterialPageRoute(builder:
        //                       (context)=> Franchise() ));
        //                 },
        //                 color: Colors.white70,
        //                 splashColor: Colors.black26,
        //                 elevation: 0,
        //                 child: Padding(
        //                   padding:EdgeInsets.all(6),
        //                   child: Row(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: <Widget>[
        //                       Text(
        //                         'View Service',
        //                         style: TextStyle(
        //                           fontSize: 16,
        //                           fontWeight: FontWeight.w700,
        //                           color:Color(0xFF8c37c7),
        //                         ),
        //                       ),
        //                       Icon(
        //                         Icons.arrow_forward_ios,
        //                         color: Colors.black26,
        //                       )
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //
        //
        //               // RichText(
        //               //   text: TextSpan(
        //               //     children: [
        //               //       TextSpan(
        //               //           text: "View Service ",
        //               //           style: TextStyle(color: Color(0xFF8c37c7),
        //               //           fontWeight:FontWeight.bold,
        //               //             letterSpacing:1,
        //               //             fontSize: 14,
        //               //           )
        //               //       ),
        //               //       WidgetSpan(
        //               //         child: Icon(Icons.arrow_forward_ios, size: 14,
        //               //           color: Colors.black45,),
        //               //       )
        //               //     ],
        //               //   ),
        //               // ) ,
        //
        //             ),
        //
        //           )
        //         ],
        //
        //       ),
        //     )
        //   ],
        // ),

        /////////
      ],


    );
  }

  Widget buttonBar() {
    return Column(
        children: item.where((e) => e['hide'] != '1').map<Widget>((document) {
          return new FlatButton(
            child: new Text(document['title']),
            color: Color.fromARGB(document['color'], 0, 100, 0),
            onPressed: () {
              setState(() {
                print("click on ${document['title']} lets hide it");
                final tile = item.firstWhere((e) => e['title'] == document['title']);
                tile['hide'] = '1';
              });
            },
          );
        }
        ).toList());
  }

  Widget serviceCard() {
    return Column(
        children:homeSer.map<Widget>((document) {
          return new   Container (
            margin: EdgeInsets.only(left: 30,top: 0,right: 30,bottom: 10),
            padding: EdgeInsets.only(left: 30,top:30,right: 30,bottom: 10),
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
                  children:<Widget> [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/home.png"))
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Padding(padding: EdgeInsets.only(left: 12,top: 0,right: 5,bottom: 0),
                            child:Text(document.title,
                              style: TextStyle(
                                  color: Color(0xFF202020),
                                  fontWeight: FontWeight.bold
                              ),)),
                        Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
                            child:Text(document.description,style: TextStyle(
                                color: Colors.grey
                            ),))
                        // Text("Service1") ,
                        // Text("This a service...")
                      ],
                    )


                  ],


                ),
                Container(
                  height: 1,
                  margin: EdgeInsets.only(left: 0,top: 10,right: 0,bottom: 0),
                  color:Colors.black12,

                ),
                Container(
                  margin: EdgeInsets.only(left: 0,top: 10,right: 0,bottom: 0),
                  child: Center(
                    child:
                    RaisedButton(
                      padding:EdgeInsets.all(6),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=> Franchise() ));
                      //  pr.show();
                      },
                      color: Colors.white70,
                      splashColor: Colors.black26,
                      elevation: 0,
                      child: Padding(
                        padding:EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'View Service',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color:Color(0xFF8c37c7),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black26,
                            )
                          ],
                        ),
                      ),
                    ),


                    // RichText(
                    //   text: TextSpan(
                    //     children: [
                    //       TextSpan(
                    //           text: "View Service ",
                    //           style: TextStyle(color: Color(0xFF8c37c7),
                    //           fontWeight:FontWeight.bold,
                    //             letterSpacing:1,
                    //             fontSize: 14,
                    //           )
                    //       ),
                    //       WidgetSpan(
                    //         child: Icon(Icons.arrow_forward_ios, size: 14,
                    //           color: Colors.black45,),
                    //       )
                    //     ],
                    //   ),
                    // ) ,

                  ),

                )
              ],

            ),
          );
        }
        ).toList());
  }



}




// class HomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//
//
//
//
//   }
//
// // _serviceList(){
// //   return
// // }
//
// }
