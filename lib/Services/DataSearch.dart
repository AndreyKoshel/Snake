import 'package:flutter/material.dart';
import 'package:snake/Screens/DetailsPage.dart';
import 'Constants.dart';

class DataSearch extends SearchDelegate<String> {
  //final img: categories[index]['img'],

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, '');
        },
        icon: AnimatedIcon(
          progress: transitionAnimation,
          icon: AnimatedIcons.menu_arrow,
        ));
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final NewList = query.isEmpty
        ? news
        : sales.where((p) => p['title'].startsWith(query)).toList();
    return ListView.builder(
      itemCount: NewList.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailsPAge(
                      title: NewList[index]['title'].toString(),
                      imgUrl: NewList[index]['imgUrl'].toString(),
                      price: NewList[index]['price'].toString())));
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(NewList[index]['imgUrl']),
        ),
        title: RichText(
          text: TextSpan(
              text: NewList[index]['title'].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: NewList[index]['title'].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
    );

    throw UnimplementedError();
  }
}
