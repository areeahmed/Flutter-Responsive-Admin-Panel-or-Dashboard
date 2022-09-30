import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomHeader extends StatelessWidget {
  CustomHeader({
    Key? key,
    required this.text,
  }) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          SizedBox(
            width: 40,
          ),
        if (!Responsive.isMobile(context))
          Text(
            text,
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        SizedBox(
          height: 90,
        ),
      ],
    );
  }
}
