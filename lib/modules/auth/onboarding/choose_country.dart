import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/modules/auth/onboarding/choose_city.dart';
import 'package:urfit/modules/auth/onboarding/controller/onboarding_cubit.dart';
import 'package:urfit/modules/auth/onboarding/model/country/country_model.dart';

import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/style/fonts.dart';
import '../../../core/presentation/views/widgets/choose_local_widget.dart';
import '../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../../core/presentation/views/widgets/slider_dots.dart';
import '../../../core/presentation/views/widgets/title_with_icon.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({super.key});
  static const route = "/chooseCountry";

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  CountryModel? selectedCountry;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OnboardingCubit>().getCountries();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            IconWithTitle(),
            SizedBox(
              height: 32.px,
            ),
            Text(
              L10n.tr().chooseCountry,
              style: CustomTextStyle.semiBold_16,
            ),
            SizedBox(
              height: 32.px,
            ),
            BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return Expanded(
                  child: Skeletonizer(
                    enabled: state is OnboardingLoadingCountries,
                    child: ChooseLocalWidget(
                      items: state is OnboardingCountriesLoaded
                          ? state.countries
                          : List.filled(3, CountryModel(id: 0, name: 'Fake Country', is_active: 1, created_at: '')),
                      onChanged: (dynamic value) {
                        selectedCountry = value as CountryModel;
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
                  // selectedCountry = selectedCountry ?? context.read<OnboardingCubit>().state.countries.first;
                  context.read<OnboardingCubit>().setCountries(selectedCountry!);
                  // context.read<LoginBloc>().add(SetCountryEvent(selectedCountry!.id));
                  context.push(ChooseCity.route);
                }),
            SizedBox(
              height: 36.px,
            ),
            SliderDots(page: 1),
          ],
        ),
      ),
    );
  }
}
