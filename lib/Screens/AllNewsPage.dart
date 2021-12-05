import 'package:flutter/material.dart';
import 'package:snake/Services/Constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'DetailsPage.dart';

class AllNewsPage extends StatefulWidget {
  const AllNewsPage({ Key? key }) : super(key: key);

  @override
  _AllNewsPageState createState() => _AllNewsPageState();
}

class _AllNewsPageState extends State<AllNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.neu),),
      body: GetBody(),
    );
  }
  Widget GetBody(){
   return SingleChildScrollView(
        
        child: Wrap(
          
                children: List.generate(
              news.length,
              (index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsPAge(
                      title: news[index]['title'].toString(),
                      imgUrl: news[index]['imgUrl'].toString(),
                      price: news[index]['price'].toString()
                    )));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Container(
                          width: 180,
                          height: 220,
                          child: Stack(children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(news[index]['imgUrl']),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        child: Column(
                          
                          children: [
                            Text(news[index]['title'],
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
                            Text(news[index]['price'] + ' BYN',
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
            ),
          
        ),
      );
  }
}