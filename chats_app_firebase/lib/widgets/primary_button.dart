import 'package:chats_app_firebase/size_config.dart';
import 'package:chats_app_firebase/styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final Function onTap;

  const PrimaryButton({
    Key key,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin:
            EdgeInsets.symmetric(horizontal: SizeConfig.blocSizeHorizontal * 6),
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blocSizeHorizontal * 6,
            vertical: SizeConfig.blocSizeVertical * 4),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: Style.gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: child,
      ),
    );
  }
}
