import 'package:flutter/material.dart';
import 'package:rsm/provider/theme_provider.dart';
import 'package:rsm/util/color_resources.dart';
import 'package:rsm/util/custom_themes.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color:Provider.of<ThemeProvider>(context).darkTheme?Color(0xFF808080) : Color(0xFFF1F1F1),
      child:Center(child:Text("Home Screen",style: titilliumRegular.copyWith(color: ColorResources.getLightSkyBlue(context))))
    ));
  }
}
