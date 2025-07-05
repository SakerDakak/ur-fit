import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/modules/onboarding/controller/onboarding_cubit.dart';
import 'package:urfit/modules/onboarding/model/country/country_model.dart';
import 'package:urfit/modules/onboarding/views/choose_city.dart';

import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/style/fonts.dart';
import '../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../../core/presentation/views/widgets/slider_dots.dart';
import '../../../core/presentation/views/widgets/title_with_icon.dart';
import 'widgets/radio_listtile_list_widget.dart';

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
              buildWhen: (previous, current) => current is CountriesStates,
              builder: (context, state) {
                if (state is OnboardingCountriesLoaded) {
                  selectedCountry = state.countries.firstOrNull;
                }
                return Expanded(
                  child: Skeletonizer(
                    enabled: state is OnboardingLoadingCountries,
                    child: RadioListtileListWidget(
                      getName: (value) => value.name,
                      initialValue: selectedCountry,
                      items: state is OnboardingCountriesLoaded
                          ? state.countries
                          : List.generate(
                              3,
                              (index) =>
                                  CountryModel(id: index, name: 'Fake Country $index', is_active: 1, created_at: '')),
                      onSelect: (value) {
                        selectedCountry = value;
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
