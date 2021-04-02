import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';




void main() => runApp(MaterialApp(
  home: PintrestCard(),

));

class PintrestCard extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PintrestCardState createState() => _PintrestCardState();
}

class _PintrestCardState extends State<PintrestCard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefix: Icon(
              Icons.search,
              color: Colors.black,

            ),
            suffixIcon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            )
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.message,
              color: Colors.black,
            )
          )
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverStaggeredGrid.countBuilder(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,

              staggeredTileBuilder: (int index) => StaggeredTile.fit(1), itemBuilder: (context,index) {
            return ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Image.asset('assets/$index.jpg'),
            );
      }, itemCount:11)
          

            
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'home',
              ),
             backgroundColor: Colors.red,


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
                'search',
            ),
            backgroundColor: Colors.red,


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Text(
              'camers',
            ),
            backgroundColor: Colors.red,


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'profile',
            ),
            backgroundColor: Colors.red,


          ),

        ],
      ),




    );
  }
}

