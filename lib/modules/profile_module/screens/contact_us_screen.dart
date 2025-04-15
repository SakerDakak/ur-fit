import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/shared/widgets/compact_form_field.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('تواصل معنا'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          SvgPicture.asset(
            AppAssets.imageLogo,
            width: 150,
          ),
          const SizedBox(height: 16),
          Text(
            'نحن سعداء بتلقى رسائلك واستفساراتك',
            textAlign: TextAlign.center,
            style: CustomTextStyle.semiBold_14.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          const SizedBox(height: 24),

          // full name
           Form(
             key: _formKey,
             child: Column(
               children: [
                 CompactTextFormField(

                  title: 'الاسم الكامل',
                  hintText: 'رجاء ادخال الاسم كاملا',
                  padding: EdgeInsets.zero,
                  controller: _nameController,
                           ),

                           const SizedBox(height: 12),

                           // email
                 CompactTextFormField(
                  title: 'البريد الالكترونى',
                  hintText: 'ادخل البريد الالكترونى',
                  padding: EdgeInsets.zero,
                  controller: _emailController,
                           ),

                           const SizedBox(height: 12),

                           // // subject
                           // const CompactTextFormField(
                           //   title: 'الموضوع',
                           //   hintText: 'ادخل موضوع الرسالة',
                           //   padding: EdgeInsets.zero,
                           // ),
                           //
                           // const SizedBox(height: 12),

                           // message
                 CompactTextFormField(
                  title: 'الرسالة',
                  hintText: 'رجاء ادخال رسالتك',
                  padding: EdgeInsets.zero,
                  controller: _messageController,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15.0,
                  ),
                  maxLines: 5,
                           ),
               ],
             ),
           ),

          const SizedBox(height: 16),

          // send button
          CustomElevatedButton(
            text: 'ارسال',
            onPressed: () {

            },
            padding: EdgeInsets.zero,
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
