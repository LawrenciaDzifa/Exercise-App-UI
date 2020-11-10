import 'package:flutter/material.dart';
import 'package:tourism/Components/activities_bank.dart';

import '../Components/activities_bank.dart';

class AllExercises extends StatefulWidget {
  @override
  _AllExercisesState createState() => _AllExercisesState();
}

class _AllExercisesState extends State<AllExercises> {
  List<Activity> _allExercisesItems;

  @override
  void initState() {
    _allExercisesItems = getAllActivities();
    super.initState();
  }

  var color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: false,
        itemCount: _allExercisesItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20.0, mainAxisSpacing: 28.0),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            splashColor: Colors.pink[100],
            onTap: () {},
            child: Stack(children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, offset: Offset(0, 2))
                    ],
                    image: DecorationImage(
                        image: AssetImage(
                          _allExercisesItems[index].image,
                        ),
                        fit: BoxFit.cover),
                  )),
              Padding(
                padding:
                    const EdgeInsets.only(top: 125.0, left: 20.0, right: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    _allExercisesItems[index].activityName,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
