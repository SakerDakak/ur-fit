import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:health/health.dart';
import 'package:urfit/core/routes/routes.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';

import '../../../../generated/locale_keys.g.dart';

class StartTodyTasksSection extends StatelessWidget {
  const StartTodyTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    // initializeHealth() async {
    //   // configure the health plugin before use.
    //   await Health().configure();
    //
    //   // define the types to get
    //   var types = [
    //     HealthDataType.STEPS,
    //     // HealthDataType.BLOOD_GLUCOSE,
    //     HealthDataType.WORKOUT,
    //     // HealthDataType.ACTIVE_ENERGY_BURNED,
    //     // HealthDataType.SLEEP_ASLEEP,
    //     // HealthDataType.SLEEP_AWAKE,
    //     // HealthDataType.SLEEP_DEEP,
    //     // HealthDataType.SLEEP_LIGHT,
    //     // HealthDataType.SLEEP_REM,
    //     // HealthDataType.SLEEP_IN_BED,
    //     // HealthDataType.WATER,
    //   ];
    //
    //   // requesting access to the data types before reading them
    //   bool requested = await Health().requestAuthorization(types, permissions: [
    //     HealthDataAccess.READ_WRITE,
    //     HealthDataAccess.READ_WRITE
    //   ]);
    //   bool? request = await Health().hasPermissions(types, permissions: [
    //     HealthDataAccess.READ_WRITE,
    //     HealthDataAccess.READ_WRITE
    //   ]);
    //   print("request : ${request}");
    //   var now = DateTime.now();
    //
    //   // fetch health data from the last 24 hours
    //   List<HealthDataPoint> healthData = await Health().getHealthDataFromTypes(
    //     types: types,
    //     startTime: now.subtract(Duration(days: 1)),
    //     endTime: now,
    //   );
    //   print('healthData : $healthData');
    //   // print("steps : ${healthData.firstWhere((test) => test.type == HealthDataType.STEPS).value}");
    //   // emit(state.copyWith(healthData: healthData));
    //   // request permissions to write steps and blood glucose
    //   // types = [HealthDataType.STEPS, HealthDataType.BLOOD_GLUCOSE];
    //   // var permissions = [
    //   //   HealthDataAccess.READ_WRITE,
    //   //   HealthDataAccess.READ_WRITE
    //   // ];
    //   // await Health().requestAuthorization(types, permissions: permissions);
    //   //
    //   // // write steps and blood glucose
    //   // bool success = await Health().writeHealthData(value :10, type :HealthDataType.STEPS,startTime:  now,endTime:  now);
    //   // success = await Health().writeHealthData(value: 3.1,type:  HealthDataType.BLOOD_GLUCOSE,startTime:  now,endTime:  now);
    //   //
    //   // // you can also specify the recording method to store in the metadata (default is RecordingMethod.automatic)
    //   // // on iOS only `RecordingMethod.automatic` and `RecordingMethod.manual` are supported
    //   // // Android additionally supports `RecordingMethod.active` and `RecordingMethod.unknown`
    //   // success &= await Health().writeHealthData(value: 10,type:  HealthDataType.STEPS,startTime:  now,endTime:  now, recordingMethod: RecordingMethod.manual);
    //   //
    //   // // get the number of steps for today
    //   // var midnight = DateTime(now.year, now.month, now.day);
    //   // int? steps = await Health().getTotalStepsInInterval(midnight, now);
    // }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // icon
            SvgPicture.asset(
              AppAssets.iconsArrowProgress,
              height: 20,
            ),

            const SizedBox(width: 8),

            //
            Text(
              LocaleKeys.today.tr(),
              style: CustomTextStyle.semiBold_16.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.fontColor,
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        // desc
        Text(
          LocaleKeys.startDailyPlanCustomizedForYou.tr(),
          style: CustomTextStyle.semiBold_14,
        ),

        const SizedBox(height: 16),

        // start button
        CustomElevatedButton(
          text: LocaleKeys.startYourExercise.tr(),
          onPressed: () => GoRouter.of(context).push(Routes.myTasksScreen),
          padding: EdgeInsets.zero,
        )
      ],
    );
  }
}


////////////// What is This ya osama ??????? ///////////////////////
////////////// it was inside the start button onPressed method ///////////////////////

//  // configure the health plugin before use.
//     await Health().configure();


//     // define the types to get
//     var types = [
//     HealthDataType.STEPS,
//       HealthDataType.BASAL_ENERGY_BURNED,
//     // HealthDataType.BLOOD_GLUCOSE,
//     HealthDataType.WORKOUT,
//     // HealthDataType.ACTIVE_ENERGY_BURNED,
//     HealthDataType.SLEEP_ASLEEP,

//     HealthDataType.WATER,
//     ];

//     // requesting access to the data types before reading them
//     bool requested = await Health().requestAuthorization(types,permissions: [HealthDataAccess.READ_WRITE,HealthDataAccess.READ_WRITE,HealthDataAccess.READ_WRITE,HealthDataAccess.READ_WRITE,HealthDataAccess.READ_WRITE]);
//     // bool?  request  = await Health().hasPermissions(types,permissions: [HealthDataAccess.READ_WRITE,HealthDataAccess.READ_WRITE]);
//     print("request : ${requested}");
//     var now = DateTime.now();

//     // fetch health data from the last 24 hours
//     List<HealthDataPoint> healthData = await Health().getHealthDataFromTypes(types: types, startTime: now.subtract(Duration(days: 1)), endTime: now,);
//     healthData.forEach((element) {
//       print('healthData : ${element.type} : ${element}');
//     });
//     // print("steps : ${healthData.firstWhere((test) => test.type == HealthDataType.STEPS).value}");
//     // emit(state.copyWith(healthData: healthData));
//     // request permissions to write steps and blood glucose
//     types = [HealthDataType.STEPS, HealthDataType.BLOOD_GLUCOSE];
//     var permissions = [
//       HealthDataAccess.READ_WRITE,
//       HealthDataAccess.READ_WRITE
//     ];
//     // await Health().requestAuthorization(types, permissions: permissions);
//     //
//     // // write steps and blood glucose
//     // bool success = await Health().writeHealthData(value :10, type :HealthDataType.STEPS,startTime:  now,endTime:  now);
//     // success = await Health().writeHealthData(value: 3.1,type:  HealthDataType.BLOOD_GLUCOSE,startTime:  now,endTime:  now);
//     //
//     // // you can also specify the recording method to store in the metadata (default is RecordingMethod.automatic)
//     // // on iOS only `RecordingMethod.automatic` and `RecordingMethod.manual` are supported
//     // // Android additionally supports `RecordingMethod.active` and `RecordingMethod.unknown`
//     // success &= await Health().writeHealthData(value: 10,type:  HealthDataType.STEPS,startTime:  now,endTime:  now, recordingMethod: RecordingMethod.manual);
//     //
//     // // get the number of steps for today
//     // var midnight = DateTime(now.year, now.month, now.day);
//     // int? steps = await Health().getTotalStepsInInterval(midnight, now);