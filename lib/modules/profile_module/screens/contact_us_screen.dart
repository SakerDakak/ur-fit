
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';


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
        title:  Text(L10n.tr().contactUs),
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
            L10n.tr().weAreHappyToGetYourFeedback,
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

                  title: L10n.tr().fullName,
                  hintText: L10n.tr().enterFullName,
                  padding: EdgeInsets.zero,
                  controller: _nameController,
                           ),

                           const SizedBox(height: 12),

                           // email
                 CompactTextFormField(
                  title: L10n.tr().email,
                  hintText: L10n.tr().enterEmail,
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
                  title: L10n.tr().message,
                  hintText: L10n.tr().pleaseEnterYourMessage,
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
            text: L10n.tr().send,
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
