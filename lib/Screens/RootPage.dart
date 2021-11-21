import 'package:flutter/material.dart';
import 'package:snake/Screens/HomePage.dart';

import 'package:snake/Services/Constants.dart';
import 'package:snake/Services/DataSearch.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int activeTab =0;
 // getAppBar appbar = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBar(),
      body: GetBody(),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Snake',
        style: TextStyle(fontFamily: 'Oswald', color: Colors.black, fontSize: 30)
      ),
      actions: [
        IconButton(onPressed: (){
          showSearch(context: context, delegate: DataSearch());
        }, icon: Icon(Icons.search, color: Colors.black, size: 30))
      ],
      ),
      drawer: Drawer(),
    );
  }
  
  Widget GetBody(){
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        Center(
          child: Text("data"),
        ),
        Center(
          child: Text("data"),
        ),
        Center(
          child: Text("data"),
        ),
        
      ],
    );

  }
  Widget GetBar() {
    return Container(
      height: 75,
      decoration: BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.4)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(itemsTab.length, (index){
          return IconButton(onPressed: (){
            setState(() {
              activeTab = index;
            });
          },
           icon: Icon(itemsTab[index]['icon']),
           iconSize: itemsTab[index]['size'], 
           color: activeTab == index ? Colors.blueAccent : Colors.black);
        }
        )
      ),
    );
  }
}
