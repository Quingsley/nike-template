import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_app/common/constants/app_styles.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({
    super.key,
    required this.title,
    required this.subtTitle,
    required this.leadingImgPath,
    this.onPress,
  });
  final String title;
  final String subtTitle;
  final String leadingImgPath;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppStyles.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SvgPicture.asset(leadingImgPath),
      ),
      title: ReusableText(
        text: title,
        fSize: 14,
        fWeight: FontWeight.w500,
        color: AppStyles.darkTextColor,
      ),
      subtitle: ReusableText(
        text: subtTitle,
        fSize: 12,
        fWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.secondary,
      ),
      trailing: GestureDetector(
        onTap: onPress,
        child: SizedBox(
          width: 20,
          height: 20,
          child: SvgPicture.asset(
            'assets/images/img_edit.svg',
          ),
        ),
      ),
    );
  }
}
