import 'package:e_mitra/theme/app_theme.dart';
import 'package:e_mitra/theme/colors.dart';
import 'package:e_mitra/widgets/home_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "e-mitra",
      home: Scaffold(
        backgroundColor: AppTheme.colors.grey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(220.0),
          child: Container(
              padding: EdgeInsets.only(left: 30,top: 120,right: 30,bottom: 20),
            decoration: BoxDecoration(
                color: AppTheme.colors.blue,
                border: Border.all(
                  color: AppTheme.colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(0),topRight:Radius.circular(0),bottomLeft: Radius.circular(20) ,bottomRight: Radius.circular(20)),
                boxShadow: [BoxShadow(
                  color: AppTheme.colors.blue,
                  spreadRadius: 1,
                  blurRadius: 1,
                )]
            ),
            child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 18.0, color: Colors.black87),
                decoration: InputDecoration(
                  filled: true,
                  fillColor:AppTheme.colors.grey,
                  hintText: 'Search product',
                  contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 14.0, top: 14.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppTheme.colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:AppTheme.colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(Icons.search,color: Colors.grey,size: 32),

                ),
              ),
            ),
        ),
        body: HomeBody(),


      ),
    );


  }

  // _body(){
  //   return
  // }

}
