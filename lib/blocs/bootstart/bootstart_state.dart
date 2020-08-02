import 'package:covid19_app/blocs/common/bloc_state_bases.dart';
import 'package:covid19_app/blocs/common/enums.dart';
import 'package:flutter/foundation.dart';

abstract class Bootstart {}

/// UnInitialized
class UnBootstart extends Bootstart {}

class BootStartIsOver extends Bootstart {}

class BootstartStateOnMessage extends Bootstart
    with BlocOnMessageStateBase {
  BootstartStateOnMessage.fromOldSettingState(
      {@required String message, type = MessageType.INFO}) {
    this.message = message;
    this.type = type;
  }
}
