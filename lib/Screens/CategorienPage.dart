// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:snake/Screens/RootPage.dart';
import 'package:snake/Services/constants.dart';

//import '../Services/BottomNavigetionBar.dart';
import 'DetailsPage.dart';
import 'HomePage.dart';

class CategorienPage extends StatefulWidget {
  final String title;
  final List producttitle;
  final List img;
  final List price;
  const CategorienPage(
      {Key? key,
      required this.img,
      required this.title,
      required this.producttitle,
      required this.price})
      : super(key: key);

  @override
  _CategorienPageState createState() => _CategorienPageState();
}

class _CategorienPageState extends State<CategorienPage> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: GetBar(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  GetBody(),
    );
  }

  Widget GetBody() {
    index: activeTab;
    var size;
    return Container(
      child: SingleChildScrollView(
        child: Wrap(
            children: List.generate(
          8,
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DetailsPAge(
                            title: widget.producttitle[index].toString(),
                            imgUrl: widget.img[index].toString(),
                            price: widget.price[index].toString())));
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 180,
                      height: 220,
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(widget.img[index]),
                                  fit: BoxFit.cover)),
                          // Text(categories[index]['imgUrl']),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 140,
                    child: Column(
                      children: [
                        Text(widget.producttitle[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.price[index] + ' BYN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey)),
                      ],
                    ),
                  ),
                  
                ],
              ),
            );
          },
        )),
        
      ),
      
    );

  }
  //  Widget GetBar() {
  //   return Container(
  //     height: 75,
  //     decoration: BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.4)))),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: List.generate(itemsTab.length, (index){
  //         return GestureDetector(
  //             onTap: () {
  //               Navigator.push(
  //                   context,
  //                   MaterialPageRoute(                                  
  //                       builder: (_) => RootPage()));
  //             },
  //           child: IconButton(onPressed: (){
              
  //             setState(() {
  //               activeTab = index;
  //             });
  //           },
  //            icon: Icon(itemsTab[index]['icon']),
  //            iconSize: itemsTab[index]['size'], 
  //            color: activeTab == index ? Colors.blueAccent : Colors.black),
  //         );
  //       }
  //       )
  //     ),
  //   );
  // }
}
