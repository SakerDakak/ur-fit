import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_cubit.dart';
import 'package:urfit/modules/auth/persentation/views/widget/login_form.dart';
import 'package:urfit/modules/auth/persentation/views/widget/register_form.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/title_with_icon.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  static const route = "/emailLogin";

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const IconWithTitle(),
              SizedBox(height: 32.px),
              Center(
                child: SizedBox(
                  width: 264.px,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.px)),
                    child: TabBar(
                      controller: controller,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 5.px, vertical: 3.px),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 0,
                      labelColor: Theme.of(context).colorScheme.primary,
                      labelStyle: TStyle.semiBold_24.copyWith(fontSize: 18.px),
                      unselectedLabelColor: Co.darkGrey,
                      // tabAlignment: TabAlignment.center,
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(color: Co.backGround, borderRadius: BorderRadius.circular(8.px)),
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(
                          text: L10n.tr().signIn,
                        ),
                        Tab(
                          text: L10n.tr().signUp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              BlocProvider(
                create: (context) => di<AuthCubit>(),
                child: Expanded(
                  child: TabBarView(
                    controller: controller,
                    children: const [
                      LoginForm(),
                      RegisterForm(),
                    ],
                  ),
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
