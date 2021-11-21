// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:snake/Services/Constants.dart';

class DetailsPAge extends StatefulWidget {
  final String title;
  final String imgUrl;
  final String price;

  const DetailsPAge(
      {Key? key,
      required this.title,
      required this.imgUrl,
      required this.price})
      : super(key: key);

  @override
  _DetailsPAgeState createState() => _DetailsPAgeState();
}

class _DetailsPAgeState extends State<DetailsPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBody(),
    );
  }

  Widget GetBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: size.width,
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.imgUrl))),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Text(widget.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
           Text( widget.price + ' BYN', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
            height: 25,
          ),
          FlatButton(onPressed: (){},
           child: Container(
             height: 25,
             decoration: BoxDecoration(
               color: Colors.black,
               ),
               child: Center(
                 child: Text(
                   "Add to shopping car",
                   style: TextStyle(color: Colors.white),
                 )
                 ),
               ),
           
           )          
        ],
      ),
    );
  }
}
