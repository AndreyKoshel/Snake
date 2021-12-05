import 'package:flutter/material.dart';
import 'package:snake/Screens/AllCategoriesPage.dart';
import 'package:snake/Screens/CategorienPage.dart';
import 'package:snake/Screens/DetailsPage.dart';
import 'package:snake/Services/Constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'AllNewsPage.dart';
import 'SalePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBody(),
    );
  }

  Widget GetBody() {
    final List db = _getCategoryList(context);
    var size = MediaQuery.of(context).size;
    return ListView(children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => SalePage()));
        },
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: 308,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Frieda.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 10,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sale,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 40),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            AppLocalizations.of(context)!.categories,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AllCategorienPage()));
              },
              child: Text(
                AppLocalizations.of(context)!.all,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.grey,
            )
          ])
        ]),
      ),
      SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
          categories.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => CategorienPage(
                              title: db[index].toString(),
                              img: categories[index]['img'],
                              producttitle: categories[index]['producttitle'],
                              price: categories[index]['price'],
                            )));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Container(
                  width: 180,
                  height: 220,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(categories[index]['imgUrl']),
                              fit: BoxFit.cover)),
                      // Text(categories[index]['imgUrl']),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(db[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white)),
                      ),
                    )
                  ]),
                ),
              ),
            );
          },
        )),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            AppLocalizations.of(context)!.neu,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AllNewsPage()));
              },
              child: Text(
                AppLocalizations.of(context)!.all,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.grey,
            )
          ])
        ]),
      ),
      SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
          news.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DetailsPAge(
                            title: news[index]['title'].toString(),
                            imgUrl: news[index]['imgUrl'].toString(),
                            price: news[index]['price'].toString())));
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 180,
                      height: 220,
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(news[index]['imgUrl']),
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
        )),
      ),
    ]);
  }

  List _getCategoryList(BuildContext context) {
    return [
      AppLocalizations.of(context)!.cat,
      AppLocalizations.of(context)!.dog,
      AppLocalizations.of(context)!.bird,
      AppLocalizations.of(context)!.rodent,
      AppLocalizations.of(context)!.aqua,
    ];
  }
}
