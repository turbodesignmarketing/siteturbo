import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int serviceTypeSelectedIndex = 0;

  @observable
  double selectionPosition = 0;

  @observable
  double selectionTitleWidth = 172;
  
}