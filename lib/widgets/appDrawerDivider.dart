import 'package:flutter/material.dart';
import 'package:travel_bookings/defaults.dart';


class AppDrawerDivider extends StatelessWidget {
  const AppDrawerDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Defaults.drawerItemColor,
      indent: 10,
      endIndent: 10,
    );
  }
}

