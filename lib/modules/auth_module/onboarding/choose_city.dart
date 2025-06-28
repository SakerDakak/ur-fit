import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/onboarding/controller/onboarding_cubit.dart';
import 'package:urfit/modules/auth_module/onboarding/model/country/country_model.dart';

import '../../../core/shared/widgets/choose_local_widget.dart';
import '../../../core/shared/widgets/custom_buttons.dart';
import '../../../core/shared/widgets/slider_dots.dart';
import '../../../core/shared/widgets/title_with_icon.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/fonts.dart';
import '../bloc/authentication_bloc/authentication_bloc.dart';
import '../bloc/login_bloc.dart';

class ChooseCity extends StatelessWidget {
  const ChooseCity({super.key});
  static const route = "chooseCity";


  @override
  Widget build(BuildContext context) {
    int _initialPage = 2;
    final onBoardingCubit = context.read<OnboardingCubit>();
    onBoardingCubit.getCities();
    CountryModel? selectedCity;

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
                LocaleKeys.chooseCity.tr(),
                style: CustomTextStyle.semiBold_16,
              ),
              SizedBox(
                height: 32.px,
              ),
              BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) {
                  return ChooseLocalWidget(
                    items: state.cities,
                    onChanged: (dynamic value) {
                      selectedCity = value as CountryModel;
                    },
                  );
                },
              ),
              SizedBox(
                height: 36.px,
              ),
              CustomElevatedButton(
                  text: 'استمرار',
                  onPressed: () {
                    selectedCity = selectedCity ?? context.read<OnboardingCubit>().state.cities.first;
                    context.read<LoginBloc>().add(SetCityEvent(selectedCity!.id));
                    context.read<AuthenticationBloc>().add(DoneOnBoardingEvent(selectedCity!));
                  }),
              SizedBox(
                height: 36.px,
              ),
              SliderDots(
                page: _initialPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
