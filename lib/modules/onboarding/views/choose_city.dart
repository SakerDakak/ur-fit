import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';
import 'package:urfit/modules/onboarding/controller/onboarding_cubit.dart';
import 'package:urfit/modules/onboarding/model/country/country_model.dart';

import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/style/fonts.dart';
import '../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../../core/presentation/views/widgets/slider_dots.dart';
import '../../../core/presentation/views/widgets/title_with_icon.dart';
import 'widgets/radio_listtile_list_widget.dart';

class ChooseCity extends StatefulWidget {
  const ChooseCity({super.key});
  static const route = "/chooseCity";

  @override
  State<ChooseCity> createState() => _ChooseCityState();
}

class _ChooseCityState extends State<ChooseCity> {
  CountryModel? selectedCity;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OnboardingCubit>().getCities();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Co.backGround,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const IconWithTitle(),
            SizedBox(
              height: 32.px,
            ),
            Text(
              L10n.tr().chooseCity,
              style: TStyle.semiBold_16,
            ),
            SizedBox(
              height: 32.px,
            ),
            BlocBuilder<OnboardingCubit, OnboardingState>(
              buildWhen: (previous, current) => current is CitiesStates,
              builder: (context, state) {
                if (state is OnboardingCitiesLoaded) {
                  selectedCity = state.cities.firstOrNull;
                }

                return Expanded(
                  child: Skeletonizer(
                    enabled: state is OnboardingLoadingCities,
                    child: IgnorePointer(
                      ignoring: state is OnboardingLoadingCities,
                      child: RadioListtileListWidget(
                        getName: (value) => value.name,
                        items: state is OnboardingCitiesLoaded
                            ? state.cities
                            : List.generate(
                                5,
                                (index) => CountryModel(
                                  id: index,
                                  name: 'Fake City $index',
                                  is_active: 1,
                                  created_at: '',
                                ),
                              ),
                        onSelect: (dynamic value) {
                          selectedCity = value as CountryModel;
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 36.px,
            ),
            CustomElevatedButton(
                text: L10n.tr().continuee,
                onPressed: () async {
                  if (selectedCity == null) return;

                  // حفظ حالة إكمال اختيار المدينة
                  await CitySelectionService.setCitySelectionCompleted();

                  Session().setCityId = selectedCity!.id;
                  Session().setCountryId =
                      context.read<OnboardingCubit>().selectedCountryId!;
                  context.push(AuthScreen.route);
                }),
            SizedBox(
              height: 36.px,
            ),
            const SliderDots(page: 2),
          ],
        ),
      ),
    );
  }
}
