import 'package:bookmark/application/app_theme/theme_cubit.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

DayNightSwitchController animationController;
AnimationStates _currentAnimationState;
AnimationStates get currentAnimationState => _currentAnimationState;
set currentAnimationState(AnimationStates value) {
  _currentAnimationState = value;
  animationController.changeAnimationState(value);
}

Function(bool) onSelectionChange;

class DayNightSwitchWidget extends StatefulWidget {
  final double height, width;
  DayNightSwitchWidget(
      {this.height = 0.0, this.width = 0.0, Function(bool) onSelection}) {
    onSelectionChange = onSelection;
  }
  @override
  _DayNightSwitchWidgetState createState() => _DayNightSwitchWidgetState();
}

enum AnimationStates { day_idle, switch_day, night_idle, switch_night }

extension on AnimationStates {
  String getName() {
    return this.toString().split('.').last;
  }
}

class _DayNightSwitchWidgetState extends State<DayNightSwitchWidget> {
  @override
  void initState() {
    super.initState();
    currentAnimationState = context.bloc<ThemeCubit>().state.isDark
        ? AnimationStates.night_idle
        : AnimationStates.day_idle;
    animationController = DayNightSwitchController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: GestureDetector(
        child: FlareActor(
          "assets/rive/Animation_button.flr",
          controller: animationController,
        ),
        onTap: () {
          if (currentAnimationState == AnimationStates.day_idle) {
            currentAnimationState = AnimationStates.switch_night;
          } else if (currentAnimationState == AnimationStates.night_idle) {
            currentAnimationState = AnimationStates.switch_day;
          }
        },
      ),
    );
  }
}

class DayNightSwitchController extends FlareControls {
  @override
  void onCompleted(String name) {
    print('名称:$name');
    if (name == AnimationStates.switch_night.getName()) {
      play(AnimationStates.night_idle.getName());
      currentAnimationState = AnimationStates.night_idle;
      onSelectionChange(false);
    }
    if (name == AnimationStates.switch_day.getName()) {
      play(AnimationStates.day_idle.getName());
      currentAnimationState = AnimationStates.day_idle;
      onSelectionChange(true);
    }
    super.onCompleted(name);
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    super.initialize(artboard);
    play(currentAnimationState.getName());
  }

  void changeAnimationState(AnimationStates states) {
    play(states.getName());
  }
}
