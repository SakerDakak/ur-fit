import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/presentation/style/colors.dart';
import '../../../../../core/presentation/views/widgets/custom_outlined_button.dart';
import '../../bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const route = "/phoneLogin";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phone = TextEditingController();

  @override
  void dispose() {
    phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    final bloc = context.read<LoginBloc>();
    return PopScope(
      canPop: false,
      onPopInvoked: (bool pop) {
        // context.read<AuthenticationBloc>().add(AppStarted()); // logic in splash screen
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // AppBarWidget(
              //   size: size,
              //   text: '', context: context,
              //   press: () {
              //     context.read<AuthenticationBloc>().add(AppStarted());
              //   },
              // ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text(
                "الرجاء إدخال رقم الهاتف الخاص بك",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  "سوف نقوم بإرسال رسالة نصية ع الهاتف تحتوي ع كود لتأكيد رقم الهاتف الخاص بك",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    //fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                width: size.width,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        //  width: 50,
                        // child: CountryCodePicker(
                        //
                        //   initialSelection: '+966',
                        //   flagWidth: 20,
                        //   favorite: const ['+966', 'FA'],
                        //
                        //   padding: const EdgeInsets.all(0.0),
                        //   onChanged: (CountryCode val) {
                        //     bloc.add(OnChangeCountryCodeEvent(val.dialCode!));
                        //   },
                        // ),
                        ),
                    const SizedBox(
                      width: 3,
                    ),
                    Container(
                      width: 0.1,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      height: double.infinity,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: phone,
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.end,
                        onChanged: (val) {
                          bloc.onChangePhone(val);
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your phone';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'أدخل رقم هاتفك',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: CustomOutlinedButton(
                  onPressed: () {
                    bloc.sendCode(phone.text, bloc.state.verificationId);

                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(
                    //     builder: (ctx) => const OTPScreen(),
                    //   ),
                    // );
                  },
                  text: "إرسال الكود",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "و",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "قواعد الاستخدام",
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Text(
                      "بمجرد دخولك ع الابلكيشن برجاء الموافقة على",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "سياسة الخصوصية",
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "أو",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              TextButton(
                  onPressed: () {
                    bloc.guestLogin();
                  },
                  child: Text(
                    "الدخول كزائر",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
