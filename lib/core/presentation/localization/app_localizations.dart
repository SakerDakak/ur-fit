import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @infoUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Information updated successfully'**
  String get infoUpdatedSuccessfully;

  /// No description provided for @injuriesOrDiseases.
  ///
  /// In en, this message translates to:
  /// **'Injuries or Diseases'**
  String get injuriesOrDiseases;

  /// No description provided for @doYouHaveCurrentlyAnyPainOrInjury.
  ///
  /// In en, this message translates to:
  /// **'Do you currently have any pain or injury?'**
  String get doYouHaveCurrentlyAnyPainOrInjury;

  /// No description provided for @inWhichBodyPartYouFeelPainOrHaveInjury.
  ///
  /// In en, this message translates to:
  /// **'In which body part do you feel pain or have injury?'**
  String get inWhichBodyPartYouFeelPainOrHaveInjury;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @cardiacDisease.
  ///
  /// In en, this message translates to:
  /// **'Cardiac Disease'**
  String get cardiacDisease;

  /// No description provided for @chest.
  ///
  /// In en, this message translates to:
  /// **'Chest'**
  String get chest;

  /// No description provided for @lowerArms.
  ///
  /// In en, this message translates to:
  /// **'Lower Arms'**
  String get lowerArms;

  /// No description provided for @lowerLegs.
  ///
  /// In en, this message translates to:
  /// **'Lower Legs'**
  String get lowerLegs;

  /// No description provided for @neck.
  ///
  /// In en, this message translates to:
  /// **'Neck'**
  String get neck;

  /// No description provided for @shoulders.
  ///
  /// In en, this message translates to:
  /// **'Shoulders'**
  String get shoulders;

  /// No description provided for @upperArms.
  ///
  /// In en, this message translates to:
  /// **'Upper Arms'**
  String get upperArms;

  /// No description provided for @upperLegs.
  ///
  /// In en, this message translates to:
  /// **'Upper Legs'**
  String get upperLegs;

  /// No description provided for @waist.
  ///
  /// In en, this message translates to:
  /// **'Waist'**
  String get waist;

  /// No description provided for @currentBMI.
  ///
  /// In en, this message translates to:
  /// **'Current BMI'**
  String get currentBMI;

  /// No description provided for @targetBMI.
  ///
  /// In en, this message translates to:
  /// **'Target BMI'**
  String get targetBMI;

  /// No description provided for @bmi.
  ///
  /// In en, this message translates to:
  /// **'BMI'**
  String get bmi;

  /// No description provided for @bmiDescription.
  ///
  /// In en, this message translates to:
  /// **'A number calculated from your height and weight to estimate body fat and assess if you’re underweight, normal, overweight, or obese.'**
  String get bmiDescription;

  /// No description provided for @guide.
  ///
  /// In en, this message translates to:
  /// **'Guide'**
  String get guide;

  /// No description provided for @below.
  ///
  /// In en, this message translates to:
  /// **'Below'**
  String get below;

  /// No description provided for @andAbove.
  ///
  /// In en, this message translates to:
  /// **'and above'**
  String get andAbove;

  /// No description provided for @underWeight.
  ///
  /// In en, this message translates to:
  /// **'Underweight'**
  String get underWeight;

  /// No description provided for @normalWeight.
  ///
  /// In en, this message translates to:
  /// **'Normal weight'**
  String get normalWeight;

  /// No description provided for @overWeight.
  ///
  /// In en, this message translates to:
  /// **'Overweight'**
  String get overWeight;

  /// No description provided for @obesity.
  ///
  /// In en, this message translates to:
  /// **'Obesity'**
  String get obesity;

  /// No description provided for @excerciseLocation.
  ///
  /// In en, this message translates to:
  /// **'Exercise Location'**
  String get excerciseLocation;

  /// No description provided for @myTasks.
  ///
  /// In en, this message translates to:
  /// **'My Tasks'**
  String get myTasks;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @unselectAll.
  ///
  /// In en, this message translates to:
  /// **'Unselect All'**
  String get unselectAll;

  /// No description provided for @a____________________________________________.
  ///
  /// In en, this message translates to:
  /// **'_________________________'**
  String get a____________________________________________;

  /// No description provided for @subscriptionMethodWillBeSentToYourMail.
  ///
  /// In en, this message translates to:
  /// **'Subscription method will be sent to your email'**
  String get subscriptionMethodWillBeSentToYourMail;

  /// No description provided for @trialPeriodEnded.
  ///
  /// In en, this message translates to:
  /// **'Trial period has ended'**
  String get trialPeriodEnded;

  /// No description provided for @pleaseCheckYourInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection'**
  String get pleaseCheckYourInternetConnection;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get noInternetConnection;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrong;

  /// No description provided for @editWeight.
  ///
  /// In en, this message translates to:
  /// **'Edit Weight'**
  String get editWeight;

  /// No description provided for @liters.
  ///
  /// In en, this message translates to:
  /// **'Liters'**
  String get liters;

  /// No description provided for @noWorkoutToday.
  ///
  /// In en, this message translates to:
  /// **'No Workout Today'**
  String get noWorkoutToday;

  /// No description provided for @nextExercise.
  ///
  /// In en, this message translates to:
  /// **'Next Exercise'**
  String get nextExercise;

  /// No description provided for @finishExercise.
  ///
  /// In en, this message translates to:
  /// **'Finish Exercise'**
  String get finishExercise;

  /// No description provided for @youHaveToSubscripeToAccessThisFeature.
  ///
  /// In en, this message translates to:
  /// **'You have to subscribe to access this feature'**
  String get youHaveToSubscripeToAccessThisFeature;

  /// No description provided for @selectMeal.
  ///
  /// In en, this message translates to:
  /// **'Select Meal'**
  String get selectMeal;

  /// No description provided for @pleaseEnterTheVerificationCodeSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter the verification code sent to your email'**
  String get pleaseEnterTheVerificationCodeSentToYourEmail;

  /// No description provided for @noPreviousPlan.
  ///
  /// In en, this message translates to:
  /// **'No Previous Plan'**
  String get noPreviousPlan;

  /// No description provided for @programs.
  ///
  /// In en, this message translates to:
  /// **'Programs'**
  String get programs;

  /// No description provided for @specifiedNutrationPlansForYourBody.
  ///
  /// In en, this message translates to:
  /// **'Specified Nutrition Plans For Your Body'**
  String get specifiedNutrationPlansForYourBody;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @followingDailyTasksIncreaseYourChancesTo.
  ///
  /// In en, this message translates to:
  /// **'Following daily tasks increase your chances to'**
  String get followingDailyTasksIncreaseYourChancesTo;

  /// No description provided for @reachPerfectBody.
  ///
  /// In en, this message translates to:
  /// **'Reach perfect body'**
  String get reachPerfectBody;

  /// No description provided for @oatmeal.
  ///
  /// In en, this message translates to:
  /// **'Oatmeal'**
  String get oatmeal;

  /// No description provided for @eggs.
  ///
  /// In en, this message translates to:
  /// **'Eggs'**
  String get eggs;

  /// No description provided for @vegetables.
  ///
  /// In en, this message translates to:
  /// **'Vegetables'**
  String get vegetables;

  /// No description provided for @fruits.
  ///
  /// In en, this message translates to:
  /// **'Fruits'**
  String get fruits;

  /// No description provided for @salads.
  ///
  /// In en, this message translates to:
  /// **'Salads'**
  String get salads;

  /// No description provided for @soups.
  ///
  /// In en, this message translates to:
  /// **'Soups'**
  String get soups;

  /// No description provided for @grilledFoods.
  ///
  /// In en, this message translates to:
  /// **'Grilled Foods'**
  String get grilledFoods;

  /// No description provided for @poultry.
  ///
  /// In en, this message translates to:
  /// **'Poultry'**
  String get poultry;

  /// No description provided for @complicatedPreparation.
  ///
  /// In en, this message translates to:
  /// **'Complicated Preparation'**
  String get complicatedPreparation;

  /// No description provided for @easyPreparation.
  ///
  /// In en, this message translates to:
  /// **'Easy Preparation'**
  String get easyPreparation;

  /// No description provided for @mediumPreparation.
  ///
  /// In en, this message translates to:
  /// **'Medium Preparation'**
  String get mediumPreparation;

  /// No description provided for @searchResult.
  ///
  /// In en, this message translates to:
  /// **'Search Result'**
  String get searchResult;

  /// No description provided for @mealPreperation.
  ///
  /// In en, this message translates to:
  /// **'Meal Preparation'**
  String get mealPreperation;

  /// No description provided for @mealComponents.
  ///
  /// In en, this message translates to:
  /// **'Meal Components'**
  String get mealComponents;

  /// No description provided for @mealPreparationTime.
  ///
  /// In en, this message translates to:
  /// **'Meal Preparation Time'**
  String get mealPreparationTime;

  /// No description provided for @mealCategory.
  ///
  /// In en, this message translates to:
  /// **'Meal Category'**
  String get mealCategory;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @mealDetails.
  ///
  /// In en, this message translates to:
  /// **'Meal Details'**
  String get mealDetails;

  /// No description provided for @showLess.
  ///
  /// In en, this message translates to:
  /// **'Show Less'**
  String get showLess;

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'Show More'**
  String get showMore;

  /// No description provided for @mealDescription.
  ///
  /// In en, this message translates to:
  /// **'Meal Description'**
  String get mealDescription;

  /// No description provided for @todayEcerciseFocusOn.
  ///
  /// In en, this message translates to:
  /// **'Today\'s exercise focuses on'**
  String get todayEcerciseFocusOn;

  /// No description provided for @bestOffer.
  ///
  /// In en, this message translates to:
  /// **'Best Offer'**
  String get bestOffer;

  /// No description provided for @first.
  ///
  /// In en, this message translates to:
  /// **'First'**
  String get first;

  /// No description provided for @second.
  ///
  /// In en, this message translates to:
  /// **'Second'**
  String get second;

  /// No description provided for @third.
  ///
  /// In en, this message translates to:
  /// **'Third'**
  String get third;

  /// No description provided for @fourth.
  ///
  /// In en, this message translates to:
  /// **'Fourth'**
  String get fourth;

  /// No description provided for @fifth.
  ///
  /// In en, this message translates to:
  /// **'Fifth'**
  String get fifth;

  /// No description provided for @sixth.
  ///
  /// In en, this message translates to:
  /// **'Sixth'**
  String get sixth;

  /// No description provided for @seventh.
  ///
  /// In en, this message translates to:
  /// **'Seventh'**
  String get seventh;

  /// No description provided for @eighth.
  ///
  /// In en, this message translates to:
  /// **'Eighth'**
  String get eighth;

  /// No description provided for @ninth.
  ///
  /// In en, this message translates to:
  /// **'Ninth'**
  String get ninth;

  /// No description provided for @tenth.
  ///
  /// In en, this message translates to:
  /// **'Tenth'**
  String get tenth;

  /// No description provided for @finaly.
  ///
  /// In en, this message translates to:
  /// **'Finally'**
  String get finaly;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @excerciseDescription.
  ///
  /// In en, this message translates to:
  /// **'Exercise Description'**
  String get excerciseDescription;

  /// No description provided for @instructions.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructions;

  /// No description provided for @group.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get group;

  /// No description provided for @groups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get groups;

  /// No description provided for @expectedBurnedCalories.
  ///
  /// In en, this message translates to:
  /// **'Expected Burned Calories'**
  String get expectedBurnedCalories;

  /// No description provided for @trainDescription.
  ///
  /// In en, this message translates to:
  /// **'Train Description'**
  String get trainDescription;

  /// No description provided for @currentWeightIs.
  ///
  /// In en, this message translates to:
  /// **'Your current weight is'**
  String get currentWeightIs;

  /// No description provided for @caloriesBurn.
  ///
  /// In en, this message translates to:
  /// **'Calories burned'**
  String get caloriesBurn;

  /// No description provided for @detailsOfTodayExercises.
  ///
  /// In en, this message translates to:
  /// **'Details of today\'s exercises'**
  String get detailsOfTodayExercises;

  /// No description provided for @excerciseDuration.
  ///
  /// In en, this message translates to:
  /// **'Exercise duration'**
  String get excerciseDuration;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get minutes;

  /// No description provided for @youAreSubscribedToAPlan.
  ///
  /// In en, this message translates to:
  /// **'You are subscribed to a plan'**
  String get youAreSubscribedToAPlan;

  /// No description provided for @pleaseMakeSureThatYouSelectedAllTheRequiredFields.
  ///
  /// In en, this message translates to:
  /// **'Please make sure that you selected all the required fields'**
  String get pleaseMakeSureThatYouSelectedAllTheRequiredFields;

  /// No description provided for @couponIsInValid.
  ///
  /// In en, this message translates to:
  /// **'This coupon is invalid'**
  String get couponIsInValid;

  /// No description provided for @googleAuthenticationFailed.
  ///
  /// In en, this message translates to:
  /// **'Google authentication failed'**
  String get googleAuthenticationFailed;

  /// No description provided for @emailNotFound.
  ///
  /// In en, this message translates to:
  /// **'Email not found'**
  String get emailNotFound;

  /// No description provided for @invalidVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid verification code'**
  String get invalidVerificationCode;

  /// No description provided for @youHaveSuccessfullySubscribedToPlan.
  ///
  /// In en, this message translates to:
  /// **'You have successfully subscribed to the plan'**
  String get youHaveSuccessfullySubscribedToPlan;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get selectAll;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @pleaseEnterValidAge.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid age'**
  String get pleaseEnterValidAge;

  /// No description provided for @pleaseEnterValidHeight.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid height'**
  String get pleaseEnterValidHeight;

  /// No description provided for @pleaseEnterValidWeight.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid weight'**
  String get pleaseEnterValidWeight;

  /// No description provided for @yourHealth.
  ///
  /// In en, this message translates to:
  /// **'Your Health'**
  String get yourHealth;

  /// No description provided for @isMoreImportantThanAnything.
  ///
  /// In en, this message translates to:
  /// **'is more important than anything'**
  String get isMoreImportantThanAnything;

  /// No description provided for @welconeToMyDailyCompanionToAHealthyLife.
  ///
  /// In en, this message translates to:
  /// **'Welcome to my daily companion to a healthy life'**
  String get welconeToMyDailyCompanionToAHealthyLife;

  /// No description provided for @onboardingParagraphOne.
  ///
  /// In en, this message translates to:
  /// **'Did you know that small steps every day make a difference? We are here to help you track your health, sleep better, and live with more energy!'**
  String get onboardingParagraphOne;

  /// No description provided for @startYourHealthJourneyToday.
  ///
  /// In en, this message translates to:
  /// **'Start your health journey today'**
  String get startYourHealthJourneyToday;

  /// No description provided for @move.
  ///
  /// In en, this message translates to:
  /// **'Move'**
  String get move;

  /// No description provided for @yourBodyToFreeYourPower.
  ///
  /// In en, this message translates to:
  /// **'Your body to free your power'**
  String get yourBodyToFreeYourPower;

  /// No description provided for @youDontNeedClub.
  ///
  /// In en, this message translates to:
  /// **'You don\'t need a club'**
  String get youDontNeedClub;

  /// No description provided for @youNeedToStart.
  ///
  /// In en, this message translates to:
  /// **'You need to start'**
  String get youNeedToStart;

  /// No description provided for @onboardingParagraphTwo.
  ///
  /// In en, this message translates to:
  /// **'With us, you can exercise at home, at your own time, with daily workouts, smart reminders, and fun challenges waiting for you!'**
  String get onboardingParagraphTwo;

  /// No description provided for @everyMpementsGetYouCloserToYourGoal.
  ///
  /// In en, this message translates to:
  /// **'Every movement gets you closer to your goal'**
  String get everyMpementsGetYouCloserToYourGoal;

  /// No description provided for @eat.
  ///
  /// In en, this message translates to:
  /// **'Eat'**
  String get eat;

  /// No description provided for @rightLiveRight.
  ///
  /// In en, this message translates to:
  /// **'right, live right'**
  String get rightLiveRight;

  /// No description provided for @sayGoodByeToConfusionAndreceiveHealthyDeliciousMeals.
  ///
  /// In en, this message translates to:
  /// **'Say goodbye to confusion and receive healthy, delicious meals'**
  String get sayGoodByeToConfusionAndreceiveHealthyDeliciousMeals;

  /// No description provided for @onboardingParagraphThree.
  ///
  /// In en, this message translates to:
  /// **'And plan your meals, track your calories, and discover smart alternatives, because healthy eating doesn\'t mean deprivation, but balance and intelligence.'**
  String get onboardingParagraphThree;

  /// No description provided for @resendAfter.
  ///
  /// In en, this message translates to:
  /// **'Resend after'**
  String get resendAfter;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get seconds;

  /// No description provided for @otpHasBeenSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'An OTP has been sent to your email'**
  String get otpHasBeenSentToYourEmail;

  /// No description provided for @pressDoubleBackToExit.
  ///
  /// In en, this message translates to:
  /// **'Press double back to exit'**
  String get pressDoubleBackToExit;

  /// No description provided for @thisFieldIsRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required.'**
  String get thisFieldIsRequired;

  /// No description provided for @passwordLengthError.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters long.'**
  String get passwordLengthError;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address.'**
  String get invalidEmail;

  /// No description provided for @valueMustBeNum.
  ///
  /// In en, this message translates to:
  /// **'{val} must be at least {num} characters'**
  String valueMustBeNum(int num, String val);

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number.'**
  String get invalidPhoneNumber;

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'URFIT'**
  String get app_name;

  /// No description provided for @onBording1Title.
  ///
  /// In en, this message translates to:
  /// **'plan customized for you to reach your goal'**
  String get onBording1Title;

  /// No description provided for @onBording1Body.
  ///
  /// In en, this message translates to:
  /// **'Exciting and easy'**
  String get onBording1Body;

  /// No description provided for @startYourTrip.
  ///
  /// In en, this message translates to:
  /// **'Start your journey'**
  String get startYourTrip;

  /// No description provided for @chooseLang.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get chooseLang;

  /// No description provided for @chooseCountry.
  ///
  /// In en, this message translates to:
  /// **'Choose your country'**
  String get chooseCountry;

  /// No description provided for @chooseCity.
  ///
  /// In en, this message translates to:
  /// **'Choose your city'**
  String get chooseCity;

  /// No description provided for @continuee.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuee;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Signup'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'SignIn'**
  String get signIn;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your Email'**
  String get enterEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterPassword;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget Password'**
  String get forgetPassword;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or '**
  String get or;

  /// No description provided for @youCanLogInAs.
  ///
  /// In en, this message translates to:
  /// **'Sign In As'**
  String get youCanLogInAs;

  /// No description provided for @guest.
  ///
  /// In en, this message translates to:
  /// **'Guest'**
  String get guest;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enterFullName;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPassword;

  /// No description provided for @agreeTerms.
  ///
  /// In en, this message translates to:
  /// **'Agree to terms and conditions'**
  String get agreeTerms;

  /// No description provided for @registerNewAccount.
  ///
  /// In en, this message translates to:
  /// **'Create New Account'**
  String get registerNewAccount;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @enterEmailForVerification.
  ///
  /// In en, this message translates to:
  /// **'Enter your email for verification'**
  String get enterEmailForVerification;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @enterOtpCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Otp Code'**
  String get enterOtpCode;

  /// No description provided for @otpInfoText.
  ///
  /// In en, this message translates to:
  /// **'Enter otp code that sent to your email'**
  String get otpInfoText;

  /// No description provided for @didntGetOtp.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t get otp?'**
  String get didntGetOtp;

  /// No description provided for @pressToResendOtp.
  ///
  /// In en, this message translates to:
  /// **'Press here to resend'**
  String get pressToResendOtp;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @welcomingPhrase1.
  ///
  /// In en, this message translates to:
  /// **'We are happy to have you '**
  String get welcomingPhrase1;

  /// No description provided for @welcomingPhrase2.
  ///
  /// In en, this message translates to:
  /// **'For us to create a customized plan for you\nwe need some data that takes less than a minute.'**
  String get welcomingPhrase2;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @later.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get later;

  /// No description provided for @personalInfo.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personalInfo;

  /// No description provided for @step.
  ///
  /// In en, this message translates to:
  /// **'Steps'**
  String get step;

  /// No description provided for @one.
  ///
  /// In en, this message translates to:
  /// **'first'**
  String get one;

  /// No description provided for @two.
  ///
  /// In en, this message translates to:
  /// **'Second'**
  String get two;

  /// No description provided for @three.
  ///
  /// In en, this message translates to:
  /// **'last'**
  String get three;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @areYou.
  ///
  /// In en, this message translates to:
  /// **'Are you ?'**
  String get areYou;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// No description provided for @cm.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get cm;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @whatIsyourGoals.
  ///
  /// In en, this message translates to:
  /// **'What is your goals?'**
  String get whatIsyourGoals;

  /// No description provided for @sectionOne.
  ///
  /// In en, this message translates to:
  /// **'Section one'**
  String get sectionOne;

  /// No description provided for @sectionTwo.
  ///
  /// In en, this message translates to:
  /// **'Section two'**
  String get sectionTwo;

  /// No description provided for @weightYouWantToTarget.
  ///
  /// In en, this message translates to:
  /// **'What is the weight you want to reach?'**
  String get weightYouWantToTarget;

  /// No description provided for @kg.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get kg;

  /// No description provided for @mealsYouLike.
  ///
  /// In en, this message translates to:
  /// **'Meals you like?'**
  String get mealsYouLike;

  /// No description provided for @mealsNotLiked.
  ///
  /// In en, this message translates to:
  /// **'Meals you don\'t like?'**
  String get mealsNotLiked;

  /// No description provided for @seeMore.
  ///
  /// In en, this message translates to:
  /// **'See more'**
  String get seeMore;

  /// No description provided for @numberOfMealsPerDay.
  ///
  /// In en, this message translates to:
  /// **'Number of meals per day?'**
  String get numberOfMealsPerDay;

  /// No description provided for @mealsVerity.
  ///
  /// In en, this message translates to:
  /// **'Level of variety in the meal?'**
  String get mealsVerity;

  /// No description provided for @createMyPlan.
  ///
  /// In en, this message translates to:
  /// **'Create My Plan'**
  String get createMyPlan;

  /// No description provided for @focusedBodyPart.
  ///
  /// In en, this message translates to:
  /// **'The part you want to focus on?'**
  String get focusedBodyPart;

  /// No description provided for @trainingTimesPerWeek.
  ///
  /// In en, this message translates to:
  /// **'Number of weekly training times?'**
  String get trainingTimesPerWeek;

  /// No description provided for @workout.
  ///
  /// In en, this message translates to:
  /// **'Workout'**
  String get workout;

  /// No description provided for @preferredEquipment.
  ///
  /// In en, this message translates to:
  /// **'What do you prefer in training?'**
  String get preferredEquipment;

  /// No description provided for @chooseEquipments.
  ///
  /// In en, this message translates to:
  /// **'Choose Equipments?'**
  String get chooseEquipments;

  /// No description provided for @paymentGetWay.
  ///
  /// In en, this message translates to:
  /// **'Payment GetWay'**
  String get paymentGetWay;

  /// No description provided for @homeWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get homeWelcome;

  /// No description provided for @youCanGet.
  ///
  /// In en, this message translates to:
  /// **'You can get '**
  String get youCanGet;

  /// No description provided for @yourPerfectBody.
  ///
  /// In en, this message translates to:
  /// **'Your Perfect Body!'**
  String get yourPerfectBody;

  /// No description provided for @discountOnYourFirstPlan.
  ///
  /// In en, this message translates to:
  /// **'Discount on 1st Plan'**
  String get discountOnYourFirstPlan;

  /// No description provided for @customizedForYou.
  ///
  /// In en, this message translates to:
  /// **'Customized for you.'**
  String get customizedForYou;

  /// No description provided for @dontBeLate.
  ///
  /// In en, this message translates to:
  /// **'Hurry Up &'**
  String get dontBeLate;

  /// No description provided for @subscribeNow.
  ///
  /// In en, this message translates to:
  /// **' Subscribe now!'**
  String get subscribeNow;

  /// No description provided for @motivationalExerciseTitle.
  ///
  /// In en, this message translates to:
  /// **'Keep going on your fitness journey!'**
  String get motivationalExerciseTitle;

  /// No description provided for @motivationalExerciseSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Make every workout a step towards your goal'**
  String get motivationalExerciseSubtitle;

  /// No description provided for @motivationalExerciseAction.
  ///
  /// In en, this message translates to:
  /// **'Start your workout now'**
  String get motivationalExerciseAction;

  /// No description provided for @motivationalSubscriptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Start your journey to your dream body'**
  String get motivationalSubscriptionTitle;

  /// No description provided for @motivationalSubscriptionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get personalized workout and nutrition plans'**
  String get motivationalSubscriptionSubtitle;

  /// No description provided for @motivationalSubscriptionAction.
  ///
  /// In en, this message translates to:
  /// **'Subscribe now'**
  String get motivationalSubscriptionAction;

  /// No description provided for @goal.
  ///
  /// In en, this message translates to:
  /// **'Goal'**
  String get goal;

  /// No description provided for @currentWeight.
  ///
  /// In en, this message translates to:
  /// **'Current Weight'**
  String get currentWeight;

  /// No description provided for @updateWeight.
  ///
  /// In en, this message translates to:
  /// **'Update Weight'**
  String get updateWeight;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @startDailyPlanCustomizedForYou.
  ///
  /// In en, this message translates to:
  /// **'Start daily plan customized for you'**
  String get startDailyPlanCustomizedForYou;

  /// No description provided for @startYourExercise.
  ///
  /// In en, this message translates to:
  /// **'Start Your Exercise'**
  String get startYourExercise;

  /// No description provided for @water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get water;

  /// No description provided for @litre.
  ///
  /// In en, this message translates to:
  /// **'liter'**
  String get litre;

  /// No description provided for @steps.
  ///
  /// In en, this message translates to:
  /// **'Steps'**
  String get steps;

  /// No description provided for @km.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get km;

  /// No description provided for @calories.
  ///
  /// In en, this message translates to:
  /// **'Calories'**
  String get calories;

  /// No description provided for @calorie.
  ///
  /// In en, this message translates to:
  /// **'Calorie'**
  String get calorie;

  /// No description provided for @sleep.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get sleep;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get hours;

  /// No description provided for @exercises.
  ///
  /// In en, this message translates to:
  /// **'Exercises'**
  String get exercises;

  /// No description provided for @min.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get min;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @exercise.
  ///
  /// In en, this message translates to:
  /// **'Exercise'**
  String get exercise;

  /// No description provided for @nutritions.
  ///
  /// In en, this message translates to:
  /// **'Nutritions'**
  String get nutritions;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @week1.
  ///
  /// In en, this message translates to:
  /// **'First week'**
  String get week1;

  /// No description provided for @week2.
  ///
  /// In en, this message translates to:
  /// **'Second week'**
  String get week2;

  /// No description provided for @week3.
  ///
  /// In en, this message translates to:
  /// **'third week'**
  String get week3;

  /// No description provided for @week4.
  ///
  /// In en, this message translates to:
  /// **'fourth week'**
  String get week4;

  /// No description provided for @packageEndsIn.
  ///
  /// In en, this message translates to:
  /// **'Package Ends in'**
  String get packageEndsIn;

  /// No description provided for @todayExerciseDetails.
  ///
  /// In en, this message translates to:
  /// **'Today exercise details'**
  String get todayExerciseDetails;

  /// No description provided for @exerciseTime.
  ///
  /// In en, this message translates to:
  /// **'Exercise Time'**
  String get exerciseTime;

  /// No description provided for @exerciseTodayWillFocusOn.
  ///
  /// In en, this message translates to:
  /// **'Exercise today will Focus on'**
  String get exerciseTodayWillFocusOn;

  /// No description provided for @whatYourBodyNeeds.
  ///
  /// In en, this message translates to:
  /// **'What your body needs'**
  String get whatYourBodyNeeds;

  /// No description provided for @carbs.
  ///
  /// In en, this message translates to:
  /// **'Carbs'**
  String get carbs;

  /// No description provided for @proteins.
  ///
  /// In en, this message translates to:
  /// **'Proteins'**
  String get proteins;

  /// No description provided for @unit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get unit;

  /// No description provided for @breakFast.
  ///
  /// In en, this message translates to:
  /// **'Breakfast'**
  String get breakFast;

  /// No description provided for @lunch.
  ///
  /// In en, this message translates to:
  /// **'Lunch'**
  String get lunch;

  /// No description provided for @dinner.
  ///
  /// In en, this message translates to:
  /// **'Dinner'**
  String get dinner;

  /// No description provided for @otherMeals.
  ///
  /// In en, this message translates to:
  /// **'Other Meals'**
  String get otherMeals;

  /// No description provided for @myPlan.
  ///
  /// In en, this message translates to:
  /// **'My Plan'**
  String get myPlan;

  /// No description provided for @previousPlan.
  ///
  /// In en, this message translates to:
  /// **'Previous Plan'**
  String get previousPlan;

  /// No description provided for @subscribe.
  ///
  /// In en, this message translates to:
  /// **'Subscribe'**
  String get subscribe;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @medicalSection.
  ///
  /// In en, this message translates to:
  /// **'Medical Section'**
  String get medicalSection;

  /// No description provided for @soon.
  ///
  /// In en, this message translates to:
  /// **'Soon'**
  String get soon;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @sets.
  ///
  /// In en, this message translates to:
  /// **'Sets'**
  String get sets;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @averageNutritionGained.
  ///
  /// In en, this message translates to:
  /// **'Average nutrition gained'**
  String get averageNutritionGained;

  /// No description provided for @averageAchievedInExercise.
  ///
  /// In en, this message translates to:
  /// **'Average achieved in exercise'**
  String get averageAchievedInExercise;

  /// No description provided for @totalExerciseBurned.
  ///
  /// In en, this message translates to:
  /// **'Total calories burned '**
  String get totalExerciseBurned;

  /// No description provided for @renewSubscription.
  ///
  /// In en, this message translates to:
  /// **'Renew Subscription'**
  String get renewSubscription;

  /// No description provided for @congratulationsYouHaveDoneAGreatWork.
  ///
  /// In en, this message translates to:
  /// **'Congratulations, you have done a great work'**
  String get congratulationsYouHaveDoneAGreatWork;

  /// No description provided for @summeryOfYourPreviousPlan.
  ///
  /// In en, this message translates to:
  /// **'Summery of your previous plan'**
  String get summeryOfYourPreviousPlan;

  /// No description provided for @startedAt.
  ///
  /// In en, this message translates to:
  /// **'Started at'**
  String get startedAt;

  /// No description provided for @endedAt.
  ///
  /// In en, this message translates to:
  /// **'Ended at'**
  String get endedAt;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @sar.
  ///
  /// In en, this message translates to:
  /// **'SAR'**
  String get sar;

  /// No description provided for @passwordIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordIsRequired;

  /// No description provided for @passwordMustBeAtLeast6Characters.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordMustBeAtLeast6Characters;

  /// No description provided for @emailIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailIsRequired;

  /// No description provided for @emailMustBeValid.
  ///
  /// In en, this message translates to:
  /// **'Email must be valid'**
  String get emailMustBeValid;

  /// No description provided for @fullNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Full name is required'**
  String get fullNameIsRequired;

  /// No description provided for @fullNameMustBeAtLeast3Characters.
  ///
  /// In en, this message translates to:
  /// **'Full name must be at least 3 characters'**
  String get fullNameMustBeAtLeast3Characters;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @unverifiedCode.
  ///
  /// In en, this message translates to:
  /// **'Code is unverified'**
  String get unverifiedCode;

  /// No description provided for @becauseWeKeenToProvideAnIntegratedService.
  ///
  /// In en, this message translates to:
  /// **'Because we keen to provide an integrated service'**
  String get becauseWeKeenToProvideAnIntegratedService;

  /// No description provided for @waitFor.
  ///
  /// In en, this message translates to:
  /// **'Wait for'**
  String get waitFor;

  /// No description provided for @launching.
  ///
  /// In en, this message translates to:
  /// **'launching'**
  String get launching;

  /// No description provided for @ourMedicalServicesSoon.
  ///
  /// In en, this message translates to:
  /// **'Our medical services soon'**
  String get ourMedicalServicesSoon;

  /// No description provided for @firstStep.
  ///
  /// In en, this message translates to:
  /// **'first Step'**
  String get firstStep;

  /// No description provided for @secondStep.
  ///
  /// In en, this message translates to:
  /// **'Second Step'**
  String get secondStep;

  /// No description provided for @thirdStep.
  ///
  /// In en, this message translates to:
  /// **'Third Step'**
  String get thirdStep;

  /// No description provided for @letUsKnowYouWell.
  ///
  /// In en, this message translates to:
  /// **'Let Us Know You Well!'**
  String get letUsKnowYouWell;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @weightSelectionIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Weight selection is required'**
  String get weightSelectionIsRequired;

  /// No description provided for @dietTypeSelectionIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Diet type selection is required'**
  String get dietTypeSelectionIsRequired;

  /// No description provided for @dietType.
  ///
  /// In en, this message translates to:
  /// **'Whats is your diet type?'**
  String get dietType;

  /// No description provided for @priceAfterDiscount.
  ///
  /// In en, this message translates to:
  /// **'Price after discount'**
  String get priceAfterDiscount;

  /// No description provided for @priceBeforeDiscount.
  ///
  /// In en, this message translates to:
  /// **'Price before discount'**
  String get priceBeforeDiscount;

  /// No description provided for @couponCode.
  ///
  /// In en, this message translates to:
  /// **'Coupon Code'**
  String get couponCode;

  /// No description provided for @youAreAlreadySubscribedToThisPlan.
  ///
  /// In en, this message translates to:
  /// **'You are already subscribed to this plan'**
  String get youAreAlreadySubscribedToThisPlan;

  /// No description provided for @noSubscription.
  ///
  /// In en, this message translates to:
  /// **'No Subscription'**
  String get noSubscription;

  /// No description provided for @yourChoices.
  ///
  /// In en, this message translates to:
  /// **'Your Choices'**
  String get yourChoices;

  /// No description provided for @myPlanPhrase.
  ///
  /// In en, this message translates to:
  /// **'You can view and change your personal information and goals that have been determined before'**
  String get myPlanPhrase;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// No description provided for @changeEmail.
  ///
  /// In en, this message translates to:
  /// **'Change Email'**
  String get changeEmail;

  /// No description provided for @changeName.
  ///
  /// In en, this message translates to:
  /// **'Change Name'**
  String get changeName;

  /// No description provided for @changeEmailPhrase.
  ///
  /// In en, this message translates to:
  /// **'Change your account email.'**
  String get changeEmailPhrase;

  /// No description provided for @resetPassord.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassord;

  /// No description provided for @resetPasswordPhrase.
  ///
  /// In en, this message translates to:
  /// **'Reset your password.'**
  String get resetPasswordPhrase;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get currentPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @areYouSureYouWantToLogout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want \n to logout?'**
  String get areYouSureYouWantToLogout;

  /// No description provided for @areYouSureYouWantToDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account From Urfit?'**
  String get areYouSureYouWantToDeleteAccount;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @weAreHappyToGetYourFeedback.
  ///
  /// In en, this message translates to:
  /// **'We are happy to get your inquiries and messages'**
  String get weAreHappyToGetYourFeedback;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @pleaseEnterYourMessage.
  ///
  /// In en, this message translates to:
  /// **'Please enter your message'**
  String get pleaseEnterYourMessage;

  /// No description provided for @planUpdate.
  ///
  /// In en, this message translates to:
  /// **'Plan Update'**
  String get planUpdate;

  /// No description provided for @planUpdatePhrase1.
  ///
  /// In en, this message translates to:
  /// **'Please wait to complete the update of your plan'**
  String get planUpdatePhrase1;

  /// No description provided for @planUpdatePhrase2.
  ///
  /// In en, this message translates to:
  /// **' We are updating your diet and exercise plan based on the information you modified earlier.'**
  String get planUpdatePhrase2;

  /// No description provided for @whatsYourAge.
  ///
  /// In en, this message translates to:
  /// **'What\'s your age?'**
  String get whatsYourAge;

  /// No description provided for @whatsYourHeight.
  ///
  /// In en, this message translates to:
  /// **'What\'s your height?'**
  String get whatsYourHeight;

  /// No description provided for @whatsYourWeight.
  ///
  /// In en, this message translates to:
  /// **'What\'s your weight?'**
  String get whatsYourWeight;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @enterAge.
  ///
  /// In en, this message translates to:
  /// **'Enter age'**
  String get enterAge;

  /// No description provided for @enterHeight.
  ///
  /// In en, this message translates to:
  /// **'Enter height'**
  String get enterHeight;

  /// No description provided for @enterWeight.
  ///
  /// In en, this message translates to:
  /// **'Enter weight'**
  String get enterWeight;

  /// No description provided for @trainingTimes.
  ///
  /// In en, this message translates to:
  /// **'Exercise times'**
  String get trainingTimes;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @heightMustBeBetween.
  ///
  /// In en, this message translates to:
  /// **'Height must be between 100 and 250 cm'**
  String get heightMustBeBetween;

  /// No description provided for @weightMustBeBetween.
  ///
  /// In en, this message translates to:
  /// **'Weight must be between 25 and 300 kg'**
  String get weightMustBeBetween;

  /// No description provided for @ageMustBeBetween.
  ///
  /// In en, this message translates to:
  /// **'Age must be between 16 and 99 years'**
  String get ageMustBeBetween;

  /// No description provided for @targetWeightMustBeBetween.
  ///
  /// In en, this message translates to:
  /// **'Target weight must be between 25 and 300 kg'**
  String get targetWeightMustBeBetween;

  /// No description provided for @acceptedValuesHeight.
  ///
  /// In en, this message translates to:
  /// **'Accepted values: 100 - 250 cm'**
  String get acceptedValuesHeight;

  /// No description provided for @acceptedValuesWeight.
  ///
  /// In en, this message translates to:
  /// **'Accepted values: 25 - 300 kg'**
  String get acceptedValuesWeight;

  /// No description provided for @acceptedValuesAge.
  ///
  /// In en, this message translates to:
  /// **'Accepted values: 16 - 99 years'**
  String get acceptedValuesAge;

  /// No description provided for @acceptedValuesTargetWeight.
  ///
  /// In en, this message translates to:
  /// **'Accepted values: 25 - 300 kg'**
  String get acceptedValuesTargetWeight;

  /// No description provided for @sportsInfo.
  ///
  /// In en, this message translates to:
  /// **'Sports Information'**
  String get sportsInfo;

  /// No description provided for @dietInfo.
  ///
  /// In en, this message translates to:
  /// **'Diet Information'**
  String get dietInfo;

  /// No description provided for @medicalInfo.
  ///
  /// In en, this message translates to:
  /// **'Medical Information'**
  String get medicalInfo;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @areYouSureYouWantToCancel.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel?'**
  String get areYouSureYouWantToCancel;

  /// No description provided for @sunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// No description provided for @monday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get monday;

  /// No description provided for @tuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesday;

  /// No description provided for @wednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesday;

  /// No description provided for @thursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursday;

  /// No description provided for @friday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// No description provided for @saturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturday;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
