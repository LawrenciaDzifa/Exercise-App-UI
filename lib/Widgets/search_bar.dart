import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';


class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SearchBar(onSearch: null, onItemFound: null,
      searchBarStyle: SearchBarStyle(
        backgroundColor: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0)
      ),
      iconActiveColor: Colors.black,
      hintText:
        'Search',
        
      ),
      );

    
  }
}