import 'package:flutter/material.dart';
import 'package:tourism/Widgets/activities_grid.dart';
import 'package:tourism/Widgets/search_bar.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 360.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/bg.jpg',
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 50.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: IconButton(
                    icon: Icon(Icons.menu_outlined, color: Colors.white),
                    onPressed: null),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:100.0, left: 20.0, right: 100),
          child: Container(
              child: Text(
            'Good Morning Shishir',
            style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold,fontSize:27 ),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top:180.0, left: 30,right: 30.0),
          child: Search(),
        ),
        Padding(
          padding: const EdgeInsets.only(top:280.0),
          child: AllExercises(),
        ),

      ],
    );
  }
}