@JS()
library debugger;

import 'package:js/js.dart';
part 'types.dart';
part 'events.dart';

@JS()
@anonymous
class Debugger {
  external Object? attach(Debuggee target, String requiredVersion, [_]);

  external void detach(Debuggee target, Function? callback);

  external Object? sendCommand(
      Debuggee target, String method, Object? commandParams,
      [_]);
}
