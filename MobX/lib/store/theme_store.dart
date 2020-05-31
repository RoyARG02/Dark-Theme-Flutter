import 'package:mobx/mobx.dart';
import 'package:mobx_dark_theme/data/theme_state.dart';
import 'package:mobx_dark_theme/utils/prefs.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  @observable
  ThemeState state = ThemeState.init(prefs.getBool('isdarkTheme'));

  @action
  void toggleTheme(){
    state = ThemeState(isDarkTheme: !state.isDarkTheme);  
  }
}
