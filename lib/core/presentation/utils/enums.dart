import 'package:urfit/core/presentation/localization/l10n.dart';

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

enum BodyParts {
  // "back",
  //   "cardio",
  //   "chest",
  //   "lower arms",
  //   "lower legs",
  //   "neck",
  //   "shoulders",
  //   "upper arms",
  //   "upper legs",
  //   "waist"
  back('back'),
  cardio('cardio'),
  chest('chest'),
  lowerArms('lower arms'),
  lowerLegs('lower legs'),
  neck('neck'),
  shoulders('shoulders'),
  upperArms('upper arms'),
  upperLegs('upper legs'),
  waist('waist'),
  none('none');

  final String value;

  const BodyParts(this.value);

  static BodyParts fromValue(String value) {
    return BodyParts.values.firstWhere((e) => e.value == value, orElse: () => none);
  }

  String get nameTr {
    switch (this) {
      case BodyParts.back:
        return L10n.tr().back;
      case BodyParts.cardio:
        return L10n.tr().cardiacDisease;
      case BodyParts.chest:
        return L10n.tr().chest;
      case BodyParts.lowerArms:
        return L10n.tr().lowerArms;
      case BodyParts.lowerLegs:
        return L10n.tr().lowerLegs;
      case BodyParts.neck:
        return L10n.tr().neck;
      case BodyParts.shoulders:
        return L10n.tr().shoulders;
      case BodyParts.upperArms:
        return L10n.tr().upperArms;
      case BodyParts.upperLegs:
        return L10n.tr().upperLegs;
      case BodyParts.waist:
        return L10n.tr().waist;
      case BodyParts.none:
        return '';
    }
  }
}
