enum GenderEnum {
  male(0),
  female(1);

  final int val;
  const GenderEnum(this.val);
}

enum GoalsSectionOneEnum {
  nutrition,
  newLook,
}

enum GoalsSectionTwoEnum {
  buildMuscles,
  improveFitness,
}

enum RequestState {
  initial,
  loading,
  success,
  failure,
}
