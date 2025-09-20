
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
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title:  Text(L10n.tr().contactUs),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
        children: [
          SvgPicture.asset(
            Assets.imageLogo,
            width: 150,
          ),
          const SizedBox(height: 16),
          Text(
            L10n.tr().weAreHappyToGetYourFeedback,
            textAlign: TextAlign.center,
            style: TStyle.semiBold_14.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          const SizedBox(height: 24),

           Form(
             key: formKey,
             child: Column(
               children: [
                 CompactTextFormField(

                  title: L10n.tr().fullName,
                  hintText: L10n.tr().enterFullName,
                  padding: EdgeInsets.zero,
                  controller: nameController,
                           ),

                           const SizedBox(height: 12),

                 CompactTextFormField(
                  title: L10n.tr().email,
                  hintText: L10n.tr().enterEmail,
                  padding: EdgeInsets.zero,
                  controller: emailController,
                           ),

                           const SizedBox(height: 12),

                           //

                 CompactTextFormField(
                  title: L10n.tr().message,
                  hintText: L10n.tr().pleaseEnterYourMessage,
                  padding: EdgeInsets.zero,
                  controller: messageController,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15.0,
                  ),
                  maxLines: 5,
                           ),
               ],
             ),
           ),

          const SizedBox(height: 16),

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
