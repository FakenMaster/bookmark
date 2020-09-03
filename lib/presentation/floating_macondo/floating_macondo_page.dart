import 'package:bookmark/application/app_theme/theme_cubit.dart';
import 'package:bookmark/presentation/floating_macondo/widgets/day_night_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingMacondoPage extends StatefulWidget {
  @override
  _FloatingMacondoPageState createState() => _FloatingMacondoPageState();
}

class _FloatingMacondoPageState extends State<FloatingMacondoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('切换黑白主题')),
      body: Center(
        child: DayNightSwitchWidget(
          width: 70,
          height: 95,
          onSelection: (_) {
            context.bloc<ThemeCubit>().switchTheme();
          },
        ),
      ),
    );
  }
}
