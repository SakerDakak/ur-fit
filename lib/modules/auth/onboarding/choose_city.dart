import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/pref_utils.dart';
import 'package:urfit/modules/auth/onboarding/controller/onboarding_cubit.dart';
import 'package:urfit/modules/auth/onboarding/model/country/country_model.dart';
import 'package:urfit/modules/auth/persentation/views/screes/email_login_screen.dart';

import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/style/fonts.dart';
import '../../../core/presentation/views/widgets/choose_local_widget.dart';
import '../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../../core/presentation/views/widgets/slider_dots.dart';
import '../../../core/presentation/views/widgets/title_with_icon.dart';

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
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 77.px,
              ),
              IconWithTitle(),
              SizedBox(
                height: 32.px,
              ),
              Text(
                L10n.tr().chooseCity,
                style: CustomTextStyle.semiBold_16,
              ),
              SizedBox(
                height: 32.px,
              ),
              BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) {
                  return Expanded(
                    child: Skeletonizer(
                      enabled: state is OnboardingLoadingCities,
                      child: ChooseLocalWidget(
                        items: state is OnboardingCitiesLoaded
                            ? state.cities
                            : List.filled(5, CountryModel(id: 0, name: 'Fake City', is_active: 1, created_at: '')),
                        onChanged: (dynamic value) {
                          selectedCity = value as CountryModel;
                        },
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
                  onPressed: () {
                    // selectedCity = selectedCity ?? context.read<OnboardingCubit>().state.cities.first;
                    // context.read<LoginBloc>().add(SetCityEvent(selectedCity!.id));
                    // context.read<AuthenticationBloc>().add(DoneOnBoardingEvent(selectedCity!));
                    PrefUtils().setFirstVisit();
                    context.push(EmailLoginScreen.route);
                  }),
              SizedBox(
                height: 36.px,
              ),
              SliderDots(page: 2),
            ],
          ),
        ),
      ),
    );
  }
}
