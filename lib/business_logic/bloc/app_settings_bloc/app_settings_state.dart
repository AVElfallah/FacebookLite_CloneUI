part of 'app_settings_bloc.dart';

@immutable
abstract class AppSettingsState {}

class AppSettingsInitial extends AppSettingsState {}

class AppSettingsChangeThemeState extends AppSettingsState {}

class AppSettingsChangeSuccessState extends AppSettingsState {}

class AppSettingsChangeErrorState extends AppSettingsState {}

class AppSettingsChangePageState extends AppSettingsState {}
