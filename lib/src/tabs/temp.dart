@JS()
import 'package:js/js.dart';
// this is a temporary file
// these are things that should not go in `tab`
// but should be relocated to other areas
// for example `Port` to `runtime`
// but they are here for now, while figuring out directory structure

@JS()
@anonymous
class Port {
  external factory Port({String? name});
  external String? get name;
}
