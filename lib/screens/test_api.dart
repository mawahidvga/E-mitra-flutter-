import 'package:e_mitra/httpAuth/api_manager.dart';
import 'package:e_mitra/models/newsInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TestApi extends StatefulWidget {
  @override
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {
  Future <NewsModel> _newsModel;
   @override
   void initState(){
   _newsModel=API_Manager().getNews();
    // Fluttertoast.showToast(
    //      msg: _newsModel.toString(),
    //      toastLength: Toast.LENGTH_SHORT,
    //      gravity: ToastGravity.CENTER,
    //      timeInSecForIosWeb: 1,
    //      backgroundColor: Colors.grey,
    //      textColor: Colors.white,
    //      fontSize: 16.0,
    //
    //  );

     super.initState();
   }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
         child:FutureBuilder<NewsModel>(
           future: _newsModel,
           builder:(context,snapshot) {
             if(snapshot.hasData) {
               return ListView.builder(
                   itemCount: snapshot.data.articles.length,
                   itemBuilder: (context, index) {

                   if(index==0){
                     return Container(
                       height: 100,
                       margin: EdgeInsets.all(10),
                       child: Text("header") ,
                     );

                   }
               var article=snapshot.data.articles[index-1];
                 return Container(
                   height: 100,
                   margin: EdgeInsets.all(10),
                   child:Row(
                     children:<Widget>[
                   Card(
                    clipBehavior: Clip.antiAlias,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(24)
                     ),
                     child: AspectRatio(
                       aspectRatio: 1,
                       child: Image.network(article.urlToImage,
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                       SizedBox(
                         width: 10,
                       ),
                       Flexible(
                       child:  Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Text(index.toString()+""+article.title,overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.start,
                           style: TextStyle(
                             fontWeight: FontWeight.bold
                           ),),
                           Text(article.description,overflow: TextOverflow.ellipsis,
                           maxLines: 2,)

                         ],
                       ),
                      ),



                     ],
                   ) ,
                 );
               });
             }else{
               return Center(
                  child: CircularProgressIndicator()
               );
             }
           },
         ),

        ),
      ),
    ) ;


}
}

