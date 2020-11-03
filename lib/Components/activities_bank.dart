int activityNumber = 0;
  var activityBank;

class Activity {
  String activityName;
  String image;
  int activityNumber;

  Activity({ this.activityName,  this.image, this.activityNumber});

  List<Activity> activityBank = [
    Activity(
      activityName: 'Diet Management',
      image: 'assets/images/diet3.jpg',
      activityNumber: 0,
    ),
    Activity(
      activityName: 'Kegel ',
      image: 'assets/images/workout.jpg',
      activityNumber: 1,
    ),
    Activity(
      activityName: 'Yoga ',
      image: 'assets/images/yoga.jpg',
      activityNumber: 2,
    ),
    Activity(
      activityName: 'Meditation ',
      image: 'assets/images/meditation1.jpg',
      activityNumber: 3,
    ),
  ];
}
getActivityName(){
    return activityBank.activityNumber.activityName;
}
