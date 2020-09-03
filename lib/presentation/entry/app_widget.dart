import 'package:auto_route/auto_route.dart';
import 'package:bookmark/application/app_theme/theme_cubit.dart';
import 'package:bookmark/injection.dart';
import 'package:bookmark/presentation/route/bookmark_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ThemeCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Bookmark',
        builder: ExtendedNavigator.builder<BookmarkRouter>(
          router: BookmarkRouter(),
          builder: (context, extendedNav) =>
              BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return Theme(
                data: ThemeData(
                  brightness: context.bloc<ThemeCubit>().state.isDark
                      ? Brightness.dark
                      : Brightness.light,
                  primarySwatch: Colors.blue,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                child: extendedNav,
              );
            },
          ),
        ),
      ),
    );
  }
}
