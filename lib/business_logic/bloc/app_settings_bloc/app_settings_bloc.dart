import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';

part 'app_settings_event.dart';
part 'app_settings_state.dart';

class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  AppSettingsBloc() : super(AppSettingsInitial()) {
    on<ChangeThemeEvent>((event, emit) => emit(_changeTheme()));
    on<ChangePageEvent>((event, emit) => emit(_changePage(event.page)));
  }

  static AppSettingsBloc get(BuildContext context) =>
      BlocProvider.of<AppSettingsBloc>(context);

  bool isDarkTheme = true;
  int page = 0;

  AppSettingsState _changeTheme() {
    isDarkTheme = !isDarkTheme;
    return AppSettingsChangeSuccessState();
  }

  AppSettingsState _changePage(int page) {
    this.page = page;

    return AppSettingsChangePageState();
  }
}