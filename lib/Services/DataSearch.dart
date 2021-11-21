

import 'package:flutter/material.dart';
import 'Constants.dart';
class DataSearch extends SearchDelegate<String>{
  //final img: categories[index]['img'],
   
 
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: (){
      query = '';
    }, icon: Icon(Icons.clear))];
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context, '');
    }, 
    icon: AnimatedIcon(progress: transitionAnimation, 
    icon: AnimatedIcons.menu_arrow,)
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final NewList = query.isEmpty ? news : sales;
    //.where((p) => p.startsWith(query)).toList();
   return ListView.builder(itemCount: categories.length,
     itemBuilder: (context, index)=>ListTile(leading: 
   CircleAvatar(backgroundImage: NetworkImage(NewList[index]['imgUrl']),
   ),
   title: Text(NewList[index]['title']),
   ),
   );
    throw UnimplementedError();
  }
  
}