import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/shared/widgets/compact_form_field.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';

import '../../../generated/locale_keys.g.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});
  static const route = '/contactUsScreen';

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title:  Text(LocaleKeys.contactUs.tr()),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          SvgPicture.asset(
            Assets.imageLogo,
            width: 150,
          ),
          const SizedBox(height: 16),
          Text(
            LocaleKeys.weAreHappyToGetYourFeedback.tr(),
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

                  title: LocaleKeys.fullName.tr(),
                  hintText: LocaleKeys.enterFullName.tr(),
                  padding: EdgeInsets.zero,
                  controller: _nameController,
                           ),

                           const SizedBox(height: 12),

                           // email
                 CompactTextFormField(
                  title: LocaleKeys.email.tr(),
                  hintText: LocaleKeys.enterEmail.tr(),
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
                  title: LocaleKeys.message.tr(),
                  hintText: LocaleKeys.pleaseEnterYourMessage.tr(),
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
            text: LocaleKeys.send.tr(),
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
