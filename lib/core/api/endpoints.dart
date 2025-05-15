import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';

import '../../modules/subscription_module/data/models/package_model.dart';

class EndPoints {
  static const baseUrl = "https://urfit-app.rmz.im";

  static const countries = '/api/countries';
  static const cities = '/api/cities';

  static const logout = '/api/logout';
  static const login = '/api/login';
  static const forgetPassword = '/api/forgetPassword';
  static const verifyOtpCode = '/api/checkCode';
  static const setNewPassword = '/api/setNewPassword';
  static const sendEmailActivationCode = '/api/sendEmailActivationCode';
  static const resetPassword = "/password/reset/send";
  static const verifyEmailCode = "/password/reset/verify";
  static const forgetResetPassword = "/password/reset";
  static const checkVersion = "/version";
  static const getUserTypes = "/register/user-types";
  static const register = "/api/register";
  static const registerUpdatePhone = "/register/update-phone";
  static const registerVerifyPhone = "/register/verify-sms";
  static const registerResendOtp = "/api/resendCode";
  static const goals = '/api/goals';
  static const diets = "/api/diets";
  static const noOfDailyMeals = "/api/number-of-daily-meals";
  static const mealsVariants = "/api/mealVarieties";
  static const foodsNotLiked = "/api/foodsNotLiked";
  static const recipeTypes = "/api/recipeTypes";
  static const muscleFocus = "/api/bodyParts";
  static const workoutTypes = "/api/workoutTypes";
  static const equipments = "/api/equipments";
  static packages(PlanType planType) => "/api/getPackages?type=${planType.name}";
  static const updateProfile = '/api/updateProfile';
  static const searchRecipe = '/api/recipes/search';
  static  getRecipeDetails(int id) => '/api/recipes/$id?includeNutrition=true';
  static const executePayment = '/api/execute-payment';
  static const getUserData = '/api/get-user-info';
  static const generateMealPlan = '/api/mealPlan';
  static const getMealPlan = '/api/getMealPlans';
  static const contactUs = '/api/contactInfo';
  static const getWorkoutPlan = '/api/exercise-plans';
  static const changePassword = '/api/changePassword';
  static const calculateNutrients = '/api/calculateNutrients';
  static const calculateExercise = '/api/calculate-calories-times-sets';
  static const getPlanHistory ='/api/getHistoryMealsAndExercisesPlans';
  static const staticPages = '/api/staticPages';
  static const getSliderImages = '/api/sliderImages';
  static const loginWithGoogle = '/api/auth/google';
  static const discountValue = '/api/get-the-discount-value';
}
