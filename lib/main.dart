import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(
    title: 'Fluttercentral',
    home: MyApp(),
  ));
}

List<Choice> choices = const <Choice>[
  const Choice(
      id: 1,
      title: 'How to Stop time',
      author: 'Steven Curran',
      description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
      imglink:'assets/time.jpg',),
  const Choice(
id: 2,
title: 'Hardwiring Happiness',
author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
imglink:'assets/hard.jpg',),
  const Choice(
      id: 3,
      title: 'Blue Highways',
      author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
      imglink:'assets/moon.jpg',),
  const Choice(
      id: 4,
      title: 'How to Stop time',
      author: 'Steven Curran',
      description: 'His adventures, his discoveries, and his recollections of the extraordinary people he encountered along the way amount to a revelation of the true American experience. Hailed as a masterpiece of American travel writing, Blue Highways is an unforgettable journey along our nations backroads',
      imglink:'assets/time.jpg',),
  const Choice(
      id: 5,
      title: 'How to Stop time',
      author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
      imglink:'assets/hard.jpg',),
  const Choice(
    id: 6,
    title: 'The Road',
    author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
    imglink:'assets/road.jpg',),
  const Choice(
    id: 6,
    title: 'How to Stop time',
    author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
    imglink:'assets/moon.jpg',),
  const Choice(
    id: 7,
    title: 'How to Stop time',
    author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
    imglink:'assets/hard.jpg',),
  const Choice(
    id: 8,
    title: 'How to Stop time',
    author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
    imglink:'assets/time.jpg',),
  const Choice(
    id: 9,
    title: 'How to Stop time',
    author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
    imglink:'assets/moon.jpg',),
  const Choice(
    id: 10,
    title: 'How to Stop time',
    author: 'Steven Curran',
    description:'The New Brain Science Of Contentment, Calm and Confidence is a self-help book that aims to help the readers live a life of peace. It focuses on the key points to help the readers lead their life to the fullest.',
    imglink:'assets/hard.jpg',),
];

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Steven Curran",style: TextStyle(color: Colors.black,),),

          backgroundColor: Colors.white,

          automaticallyImplyLeading: false,
          elevation: 5.0,

          leading: Icon(
            FontAwesomeIcons.angleLeft,
            color: Colors.grey,

          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 10.0,bottom: 12.0,top:10.0),
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Icon(
                    FontAwesomeIcons.search,
                    size: 26.0,
                    color: Colors.grey,

                  ),
                )
            ),



          ],
        ),


        body: new ListView(
            shrinkWrap: false,
            padding: const EdgeInsets.all(8.0),
            children: List.generate(choices.length, (index) {
              return Container(

                child: ChoiceCard(choice: choices[index], item: choices[index]),
              );
            })));
  }
}

class Choice {
  final int id;
  final String title;
  final String author;
  final String description;
  final String imglink;

  const Choice(
      {this.id, this.title, this.author,this.description,  this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
        this.choice,
        this.onTap,
        @required this.item,
        this.selected: false})
      : super(key: key);
  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;
  @override

  Widget build(BuildContext context) {

    var flutterRatingBar = FlutterRatingBar(

      initialRating: 3,
      itemSize: 25,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      fillColor: Colors.red,

      borderColor: Colors.red.withAlpha(50),

      allowHalfRating: true,

      onRatingUpdate: (rating) {

        print(rating);

      },

    );
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ArticleReadPage(index: choices.indexOf(choice))));
      },

      child: Row(

      children: <Widget>[ Flexible(
           child:Card(

      clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(),
          color: Colors.white,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[

              new Container(
                  width: MediaQuery.of(context).size.width*.25,
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(choice.imglink,width: 84,height: 84,)),
              new Container(

                width: MediaQuery.of(context).size.width*.25,

                padding: const EdgeInsets.all(4.0),
                alignment:Alignment.topCenter,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
mainAxisSize: MainAxisSize.max,
                  children: <Widget>[

                    FlutterRatingBar(
                      initialRating: 5,
                      itemSize: 10,
                      fillColor: Colors.red,
                      borderColor: Colors.red.withAlpha(50),
                      allowHalfRating: false,

                      onRatingUpdate: (rating) {
                        print(rating);

                      },

                    ),
                    Text(choice.title,
                        // ignore: deprecated_member_use
                        style: TextStyle(color: Colors.black,fontSize: 16)),
                    Text(choice.author,
                        style: TextStyle(color: Colors.black.withOpacity(0.5))),

                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),



Text("\$20",style:TextStyle(color: Colors.green) ,textAlign: TextAlign.right,)





      ],
            crossAxisAlignment: CrossAxisAlignment.start,

          ),



           ),
      ), ],),);
  }
}

class ArticleReadPage extends StatelessWidget {
  final int index;

  const ArticleReadPage({Key key, this.index}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Center(
      child: ChoiceCardRead(choice: choices[index]),
    );
  }
}

class ChoiceCardRead extends StatelessWidget {
  const ChoiceCardRead({Key key, this.choice}) : super(key: key);
  final Choice choice;
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset:false,
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

      body:SingleChildScrollView(

      child: Column(
        children:[

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

            child: Image.asset(choice.imglink,),
          ),
          SizedBox(
              height:30.0
          ),



                      Text(choice.title,textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.title,),
                      Text(choice.author,textAlign: TextAlign.center,
                          style:
                          TextStyle(color: Colors.black.withOpacity(0.5))),
     Row(
         mainAxisAlignment: MainAxisAlignment.center,
      
          children: <Widget>[

          FlutterRatingBar(
            itemPadding:EdgeInsets.all(2.0),
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
      ], ),











          SizedBox(
            height: 20.0,
          ),

          new Divider(height: 40.0,color: Colors.grey,),
                     Column(
                       children: [
                         SafeArea(
                           minimum: EdgeInsets.all(20.0),

                      child:Text(choice.description,textAlign: TextAlign.center,
                          style:
                          TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16.0,height: 1.5)),
                         ), ],
                     ),

                    ],
                  ),






      ),


      );
  }
}
