
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class DetailsPage extends StatelessWidget {
  final int index;

   DetailsPage( this.index);


  @override
  Widget build(BuildContext context) {
    if(index==0)
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book Detail",style: TextStyle(color: Colors.black,),),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 5.0,

        leading:IconButton(


          icon: Icon(FontAwesomeIcons.angleLeft),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),





      body: SingleChildScrollView(

        child:Column(

          children: [
            SizedBox(
              height: 20.0,
            ),

            Container(

              decoration: BoxDecoration(

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: Offset(0, 7), // changes position of shadow
                  ),
                ],
              ),

              child: Image.asset("assets/moon.jpg",),
            ),


            SizedBox(
                height:30.0
            ),
            Text(
              'Blue Highways',textAlign: TextAlign.center,style:TextStyle(color: Colors.black,fontSize: 24) ,),
            Text(
              'Steven Holzner',textAlign: TextAlign.center,style:TextStyle(color: Colors.blueGrey,fontSize: 16) ,),

            SizedBox(
              height: 30.0,
            ),



            FlutterRatingBar(
              initialRating: 5,
              itemSize: 25,
              fillColor: Colors.red,
              borderColor: Colors.red.withAlpha(50),
              allowHalfRating: false,

              onRatingUpdate: (rating) {
                print(rating);

              },

            ),

            Text("38 Reviews",textAlign: TextAlign.center,style:TextStyle(color: Colors.blue,fontSize: 16) ,),












            SizedBox(
              height: 20.0,
            ),

            new Divider(height: 40.0,color: Colors.grey,),
            Column(
              children: [
                SafeArea(
                  minimum: EdgeInsets.all(20.0),
                  child:
                  Text("The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.",style: TextStyle(
                      fontSize: 16.0,
                      height: 1.5 //You can set your custom height here
                  ),),

                ),
              ],
            )

          ],
        ),



      ),

    );
  }
}