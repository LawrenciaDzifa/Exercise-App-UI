int activityNumber = 0;
var activityBank;

class Activity {
  String activityName;
  String image;

  Activity({
    this.activityName,
    this.image,
  });
}

List<Activity> getAllActivities() => [
      Activity(
        activityName: 'Diet Management',
        image: 'assets/images/diet3.jpg',
      ),
      Activity(
        activityName: 'Kegel ',
        image: 'assets/images/workout.jpg',
      ),
      Activity(
        activityName: 'Yoga ',
        image: 'assets/images/yoga.jpg',
      ),
      Activity(
        activityName: 'Meditation ',
        image: 'assets/images/meditation1.jpg',
      ),
    ];

getActivityName(activityNumber) {
  return activityBank[activityNumber].activityName;
}
