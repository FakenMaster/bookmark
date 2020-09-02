// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/bookmark/bookmark_bloc.dart';
import 'infrastructure/bookmark/bookmark_repository.dart';
import 'domain/bookmark/i_bookmark_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<IBookmarkRepository>(() => BookmarkRepository());
  gh.factory<BookmarkBloc>(() => BookmarkBloc(get<IBookmarkRepository>()));
  return get;
}
