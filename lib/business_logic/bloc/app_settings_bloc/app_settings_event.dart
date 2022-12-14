part of 'app_settings_bloc.dart';

@immutable
abstract class AppSettingsEvent {}

class ChangeThemeEvent extends AppSettingsEvent {}

class ChangePageEvent extends AppSettingsEvent {
  final int page;
  ChangePageEvent(this.page);
}

class ChangeAppLanguageEvent extends AppSettingsEvent {
  final Locale locale;

  ChangeAppLanguageEvent(this.locale);
}
