import 'package:flutter/material.dart';
import '../widgets/spinner_widget.dart';
import 'franchise_details.dart';

class Franchise extends StatelessWidget {
  String value;

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
            children: <Widget> [
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
                color: Colors.transparent,
                child: Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              boxShadow: [BoxShadow(
                                color: Colors.transparent,
                                spreadRadius: 2,
                                blurRadius: 2,
                              )]
                          ),
                          height: 60,
                          width: 400,
                          margin: EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 5),
                          padding: EdgeInsets.all(10),
                          child: SpinnerWidget()

                        // new DropdownButton<String>(
                        //   items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        //     return new DropdownMenuItem<String>(
                        //       value: value,
                        //       child: new Text(value,
                        //       style: TextStyle(
                        //         color: Colors.grey
                        //       ),)
                        //     );
                        //   }).toList(),
                        //  // onChanged: (_) {},
                        //   onChanged: (String newValue) {
                        //       this.value=newValue;
                        //   },
                        //   isExpanded: true,
                        //     hint: Text("Select State"),
                        //     icon: Icon(
                        //       Icons.arrow_downward,
                        //       color: Colors.grey,
                        //       size: 20.09,
                        //     ),
                        //   style: TextStyle(color: Colors.black,
                        //   fontSize: 15),
                        //   underline: Container(
                        //     color: Colors.transparent,
                        //   ),
                        // ),

                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              boxShadow: [BoxShadow(
                                color: Colors.transparent,
                                spreadRadius: 2,
                                blurRadius: 2,
                              )]
                          ),
                          height: 60,
                          width: 400,
                          margin: EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 5),
                          padding: EdgeInsets.all(10),
                          child: SpinnerWidget()

                        // new DropdownButton<String>(
                        //   items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        //     return new DropdownMenuItem<String>(
                        //       value: value,
                        //       child: new Text(value,
                        //       style: TextStyle(
                        //         color: Colors.grey
                        //       ),)
                        //     );
                        //   }).toList(),
                        //  // onChanged: (_) {},
                        //   onChanged: (String newValue) {
                        //       this.value=newValue;
                        //   },
                        //   isExpanded: true,
                        //     hint: Text("Select State"),
                        //     icon: Icon(
                        //       Icons.arrow_downward,
                        //       color: Colors.grey,
                        //       size: 20.09,
                        //     ),
                        //   style: TextStyle(color: Colors.black,
                        //   fontSize: 15),
                        //   underline: Container(
                        //     color: Colors.transparent,
                        //   ),
                        // ),

                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              boxShadow: [BoxShadow(
                                color: Colors.transparent,
                                spreadRadius: 2,
                                blurRadius: 2,
                              )]
                          ),
                          height: 60,
                          width: 400,
                          margin: EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 5),
                          padding: EdgeInsets.all(10),
                          child: SpinnerWidget()

                        // new DropdownButton<String>(
                        //   items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        //     return new DropdownMenuItem<String>(
                        //       value: value,
                        //       child: new Text(value,
                        //       style: TextStyle(
                        //         color: Colors.grey
                        //       ),)
                        //     );
                        //   }).toList(),
                        //  // onChanged: (_) {},
                        //   onChanged: (String newValue) {
                        //       this.value=newValue;
                        //   },
                        //   isExpanded: true,
                        //     hint: Text("Select State"),
                        //     icon: Icon(
                        //       Icons.arrow_downward,
                        //       color: Colors.grey,
                        //       size: 20.09,
                        //     ),
                        //   style: TextStyle(color: Colors.black,
                        //   fontSize: 15),
                        //   underline: Container(
                        //     color: Colors.transparent,
                        //   ),
                        // ),

                      ),


                      SizedBox(height: 50),

                      Container(
                        margin: EdgeInsets.only(left: 30,top: 0,right: 30,bottom: 10),
                        padding: EdgeInsets.only(left: 30,top:30,right: 30,bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2,
                                  blurRadius: 1
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget> [

                                    Padding(padding: EdgeInsets.only(left: 12,top: 0,right: 5,bottom: 0),
                                        child:Text("Name",
                                          style: TextStyle(
                                              color: Color(0xFF202020),
                                              fontWeight: FontWeight.bold
                                          ),)),
                                    Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
                                        child:Text("Phone number.",style: TextStyle(
                                            color: Colors.grey
                                        ),)),
                                    Padding(padding: EdgeInsets.only(left: 12,top: 2,right: 5,bottom: 0),
                                        child:Text("Place",style: TextStyle(
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
                                child:RaisedButton(
                                  padding:EdgeInsets.all(6),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder:
                                        (context)=> FranchiseDetails() ));
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
                                          'View Franchise',
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

                              ),

                            )
                          ],

                        ),
                      ),
                  ],
                ),
              )
            ],

        ),
    ),
      ),
    );
  }

  // setState(String a){
//   //
//   // }


  getState(){

  }
}
