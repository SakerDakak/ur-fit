import 'package:urfit/modules/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/personal_info/data/models/no_of_daily_meals.dart';
import 'package:urfit/modules/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';

class Fakers {
  final goals = const [
    UserGoalsModel(id: 1, name: 'Lose Weight', imageUrl: ''),
    UserGoalsModel(id: 2, name: 'Build Muscle', imageUrl: ''),
    UserGoalsModel(id: 3, name: 'Maintain Weight', imageUrl: ''),
    UserGoalsModel(id: 4, name: 'Increase Flexibility', imageUrl: ''),
  ];
  final selectionModels = const [
    SelectionItemModel(id: 1, name: 'Lose Weight', image: ''),
    SelectionItemModel(id: 2, name: 'Build Muscle', image: ''),
    SelectionItemModel(id: 3, name: 'Maintain Weight', image: ''),
    SelectionItemModel(id: 4, name: 'Increase Flexibility', image: ''),
  ];
  final noOfDailyMeals = const [
    NoOfDailyMealsModel(value: '1', label: 'Lose Weight'),
    NoOfDailyMealsModel(value: '2', label: 'Build Muscle'),
    NoOfDailyMealsModel(value: '3', label: 'Maintain Weight'),
    NoOfDailyMealsModel(value: '4', label: 'Increase Flexibility'),
  ];
  final bodyPartsModel = const [
    BodyPartsModel(value: '1', key: 'Lose Weight'),
    BodyPartsModel(value: '2', key: 'Build Muscle'),
    BodyPartsModel(value: '3', key: 'Maintain Weight'),
    BodyPartsModel(value: '4', key: 'Increase Flexibility'),
  ];

  List<PackageModel> get packages => List.generate(
    12,
    (index) => PackageModel(
        id: index + 1,
        name: '${index + 1} Plan',
        price: "${(index + 1) * 9.99}",
        duration: 15,
        type: PlanType.values[index % PlanType.values.length],
        is_active: 1,
        image: '',
        description: ''),
  );
}
