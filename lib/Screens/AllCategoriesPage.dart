import 'package:flutter/material.dart';
import 'package:snake/Services/Constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'CategorienPage.dart';

class AllCategorienPage extends StatefulWidget {
  // final String title;
  const AllCategorienPage({
    Key? key,
  }) : super(key: key);

  @override
  _AllCategorienPageState createState() => _AllCategorienPageState();
}

class _AllCategorienPageState extends State<AllCategorienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.categories),
      ),
      body: GetBody(),
    );
  }

  Widget GetBody() {
    final List db = _getCategoryList(context);

    var size;
    return SingleChildScrollView(
      child: Wrap(
          children: List.generate(
        categories.length,
        (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => CategorienPage(
                            title: categories[index]['title'].toString(),
                            img: categories[index]['img'],
                            producttitle: categories[index]['producttitle'],
                            price: categories[index]['price'],
                          )));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 180,
                height: 220,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(categories[index]['imgUrl']),
                              fit: BoxFit.cover)),
                      // Text(categories[index]['imgUrl']),
                    ),
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
    );
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
