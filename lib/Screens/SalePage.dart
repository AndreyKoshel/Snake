import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:snake/Services/Constants.dart';

import 'DetailsPage.dart';

class SalePage extends StatefulWidget {
  const SalePage({ Key? key }) : super(key: key);

  @override
  _SalePageState createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.sale),),
      body: GetBody(),
    );
  }
  Widget GetBody(){
   return SingleChildScrollView(
        
        child: Wrap(
          
                children: List.generate(
              sales.length,
              (index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsPAge(
                      title: sales[index]['title'].toString(),
                      imgUrl: sales[index]['imgUrl'].toString(),
                      //oldprice: sales[index]['oldprice'].toString(),
                      price: sales[index]['price'].toString()
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
                                          NetworkImage(sales[index]['imgUrl']),
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
                            Text(sales[index]['title'],
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
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(sales[index]['oldprice'] + ' BYN',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.red,
                                            decoration: TextDecoration.lineThrough
                                            )),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('-20%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.red,
                                           
                                            ))
                                  ],
                                ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(sales[index]['price'] + ' BYN',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.grey,
                                        
                                        )),
                              ],
                            ),
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