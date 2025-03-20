import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network_client/barrel.dart';

extension ThemeModeX on ThemeMode {
  bool get isLight => this == ThemeMode.light;
  bool get isDark => this == ThemeMode.dark;
  static ThemeMode fromName(String name) {
    switch (name) {
      case 'system':
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  String get storageKey {
    switch (this) {
      case ThemeMode.system:
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
    }
  }
}

final class ThemeModeCubit extends Cubit<ThemeMode> {
  ThemeModeCubit() : super(ThemeMode.system) {
    _getInitialThemeMode();
  }

  final LocalStorageUtils _storage = LocalStorageUtils();

  Future<void> _getInitialThemeMode() async {
    final themeModeKey = await _storage.getString(_storage.themeModeKey);
    if (themeModeKey != null) {
      emit(ThemeModeX.fromName(themeModeKey));
    }
  }

  void onThemeModeChanged(ThemeMode? newValue) {
    if (newValue == null) return;
    emit(newValue);
    _storage.setString(_storage.themeModeKey, newValue.storageKey);
  }
}
